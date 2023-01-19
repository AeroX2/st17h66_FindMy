package com.jridey.findmy

import android.content.Context
import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.SnapshotStateMap
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.idevicesinc.sweetblue.*
import com.idevicesinc.sweetblue.ScanFilter.ScanEvent
import com.idevicesinc.sweetblue.utils.BleSetupHelper
import com.idevicesinc.sweetblue.utils.Uuids
import com.jridey.findmy.ui.theme.FindMyTheme
import kotlinx.coroutines.delay
import java.util.*
import kotlin.concurrent.timer

val BUZZER_SERVICE_UUID: UUID =
    UUID.fromString("0000FFF0-0000-1000-8000-00805F9B34FB")
val BUZZER_ENABLE_UUID: UUID =
    UUID.fromString("00000000-0000-1000-8000-00805F9B34FB")

class MyScanFilter : ScanFilter {
    override fun onEvent(s: ScanEvent): ScanFilter.Please {
        Log.d("FindMy", s.macAddress())
        if (s.macAddress()[0] in "CDEF" && s.rssi() > -60) {
            Log.d("FindMy", s.toString())
            return ScanFilter.Please.acknowledge()
        }
        return ScanFilter.Please.ignore()
    }
}

class MainActivity : ComponentActivity() {
    private lateinit var config: BleManagerConfig
    private lateinit var manager: BleManager

    private var selectedDevice: String? = null
    private val foundDevices = mutableStateMapOf<String, Boolean>()
    private var timer: Timer? = null;

    private fun connectAndWrite(device: BleDevice) {
        device.connect { connectEvent ->
            if (!connectEvent.wasSuccess() && !connectEvent.isRetrying) {
                Log.e(
                    "FindMy",
                    "Device failed to connect. Fail Event: " + connectEvent.failEvent()
                );
            }
            val write = BleWrite(BUZZER_SERVICE_UUID, BUZZER_ENABLE_UUID)
            write.setString("ring me plz")
            device.write(write)
        }
    }

    private fun activateBuzzer(transmitting: Boolean) {
        Log.d("FindMy", "Attempting to activate buzzer")
        if (selectedDevice == null) {
            Log.d("FindMy", "Select a device please")
            return
        }

        if (transmitting) {
            val device = manager.newDevice(selectedDevice)
                    connectAndWrite(device)
                    timer = timer(period = 5000) {
                        connectAndWrite(device)
                    }

        } else {
            timer?.cancel()
        }
    }

    private fun connectAndRead(device: BleDevice) {
        Log.d("FindMy", "Connecting to device: ${device.macAddress}")
        device.connect { connectEvent ->
            if (!connectEvent.wasSuccess() && !connectEvent.isRetrying) {
                Log.e(
                    "FindMy",
                    "Device failed to connect. Fail Event: " + connectEvent.failEvent()
                );
            }
            val read = BleRead(Uuids.GENERIC_ACCESS_SERVICE_UUID, Uuids.DEVICE_NAME)
            read.setReadWriteListener {
                if (it.data_string() == "FindMy") {
                    Log.d("FindMy", "Found device: ${device.macAddress}")
                    foundDevices[connectEvent.device().macAddress] = true
                } else {
                    manager.startScan()
                }
            }
            device.read(read)
        }
    }

    private fun discoverDevice(transmitting: Boolean) {
        Log.d("FindMy", "Toggling discovery $transmitting")
        if (transmitting) {
            manager.setListener_Discovery {
                if (it.was(DiscoveryListener.LifeCycle.DISCOVERED)) {
                    manager.stopScan()
                    connectAndRead(it.device())
                }
            }
            config.defaultScanFilter = MyScanFilter()
            manager.setConfig(config)
            manager.startScan()
        } else {
            manager.stopScan()
        }
    }

    private fun setSelectedDevice(device: String) {
        selectedDevice = device
        getPreferences(Context.MODE_PRIVATE).edit().putString("macAddress", device).apply()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            FindMyTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    FindMeButton(
                        selectedDevice,
                        foundDevices,
                        this::activateBuzzer,
                        this::discoverDevice,
                        this::setSelectedDevice,
                    )
                }
            }
        }

        config = BleManagerConfig()
        manager = BleManager.get(this, config)
        selectedDevice = getPreferences(Context.MODE_PRIVATE).getString("macAddress", null)

        BleSetupHelper.runEnabler(manager, this) { result: BleSetupHelper.Result ->
            if (result.successful) {
                Log.d("FindMy", "Bluetooth setup successful")
            } else {
                Log.e("FindMy", result.errorMessage)
            }
        }
    }
}

@Composable
fun FindMeButton(
    selectedDevice: String?,
    foundDevices: SnapshotStateMap<String, Boolean>,
    activateBuzzer: (transmitting: Boolean) -> Unit,
    toggleDiscovery: (transmitting: Boolean) -> Unit,
    setSelectedDevice: (device: String) -> Unit,
) {
    val interactionSource = remember { MutableInteractionSource() }
    var transmitting by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier
            .fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(
            space = 32.dp,
            alignment = Alignment.CenterVertically
        ),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Box(
            contentAlignment = Alignment.Center
        ) {
            if (transmitting) RippleLoadingAnimation()
            Button(
                contentPadding = PaddingValues(20.dp),
                onClick = {
                    transmitting = !transmitting
                    activateBuzzer(transmitting)
                },
                interactionSource = interactionSource
            ) {
                Text(text = "Find Me!", fontSize = 40.sp)
            }
        }
        DiscoverDropDown(selectedDevice, foundDevices, toggleDiscovery, setSelectedDevice)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DiscoverDropDown(
    selectedDevice: String?,
    foundDevices: SnapshotStateMap<String, Boolean>,
    toggleDiscovery: (transmitting: Boolean) -> Unit,
    setSelectedDevice: (device: String) -> Unit,
) {
    var expanded by remember { mutableStateOf(false) }
    var selectedOptionText by remember { mutableStateOf(selectedDevice.orEmpty()) }

    ExposedDropdownMenuBox(
        expanded = expanded,
        onExpandedChange = {
            expanded = !expanded
            toggleDiscovery(expanded)
        }
    ) {
        TextField(
            readOnly = true,
            value = selectedOptionText,
            onValueChange = { },
            label = { Text("Mac address") },
            trailingIcon = {
                ExposedDropdownMenuDefaults.TrailingIcon(
                    expanded = expanded
                )
            },
            colors = ExposedDropdownMenuDefaults.textFieldColors()
        )
        ExposedDropdownMenu(
            expanded = expanded,
            onDismissRequest = {
                expanded = false
                toggleDiscovery(false)
            }
        ) {
            if (foundDevices.size <= 0) {
                Column(modifier = Modifier.fillMaxWidth(), horizontalAlignment = Alignment.CenterHorizontally) {
                    CircularProgressIndicator()
                }
            } else {
                foundDevices.keys.forEach { selectionOption ->
                    DropdownMenuItem(
                        text = {
                            Text(text = selectionOption)
                        },
                        onClick = {
                            expanded = false
                            selectedOptionText = selectionOption
                            setSelectedDevice(selectionOption)
                            toggleDiscovery(false)
                        }
                    )
                }
            }
        }
    }
}

@Composable
fun RippleLoadingAnimation(
    circleColor: Color = Color.Blue,
    animationDelay: Int = 1500
) {

// 3 circles
    val circles = listOf(
        remember {
            Animatable(initialValue = 0f)
        },
        remember {
            Animatable(initialValue = 0f)
        },
        remember {
            Animatable(initialValue = 0f)
        }
    )

    circles.forEachIndexed { index, animatable ->
        LaunchedEffect(Unit) {
            // Use coroutine delay to sync animations
            // divide the animation delay by number of circles
            delay(timeMillis = (animationDelay / 3L) * (index + 1))

            animatable.animateTo(
                targetValue = 1f,
                animationSpec = infiniteRepeatable(
                    animation = tween(
                        durationMillis = animationDelay,
                        easing = LinearEasing
                    ),
                    repeatMode = RepeatMode.Restart
                )
            )
        }
    }

    // outer circle
    Box(
        modifier = Modifier
            .aspectRatio(1f)
            .fillMaxSize()
            .background(color = Color.Transparent)
    ) {
        // animating circles
        circles.forEachIndexed { _, animatable ->
            Box(
                modifier = Modifier
                    .scale(scale = animatable.value)
                    .aspectRatio(1f)
                    .fillMaxSize()
                    .clip(shape = CircleShape)
                    .background(
                        color = circleColor
                            .copy(alpha = (1 - animatable.value))
                    )
            ) {
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    FindMyTheme {
//        FindMeButton {}
    }
}