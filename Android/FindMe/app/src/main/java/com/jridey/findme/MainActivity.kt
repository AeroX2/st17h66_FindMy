package com.jridey.findme

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.idevicesinc.sweetblue.BleManager
import com.idevicesinc.sweetblue.BleManagerConfig
import com.idevicesinc.sweetblue.utils.BleScanRecord
import com.idevicesinc.sweetblue.utils.BleSetupHelper
import com.idevicesinc.sweetblue.utils.Uuids
import com.jridey.findme.ui.theme.FindMeTheme
import kotlinx.coroutines.delay
import java.util.*


class MainActivity : ComponentActivity() {
    private lateinit var config: BleManagerConfig
    private lateinit var manager: BleManager

    private val toggleAdvertising = fun (transmitting: Boolean) {
        if (transmitting) {
            val advData = BleScanRecord()
            advData.addServiceData(UUID.fromString("b3a35f56-d23f-47ea-b3fd-7a0cea3e53a1"), "find me plz".toByteArray())
            advData.setOptions()
            manager.server.startAdvertising(advData)
        } else {
            manager.server.stopAdvertising()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            FindMeTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    FindMeButton(toggleAdvertising)
                }
            }
        }

        config = BleManagerConfig()
        config.doNotRequestLocation = true
        config.requestAdvertisePermission = true
        manager = BleManager.get(this, config)
        manager.server.setListener_Advertising { e ->
            println(manager.server.isAdvertising)
            println(manager.server.isAdvertising(UUID.fromString("b3a35f56-d23f-47ea-b3fd-7a0cea3e53a1")))
        }


        BleSetupHelper.runEnabler(manager, this) { result: BleSetupHelper.Result ->
            if (result.successful) {
                // Do whatever you want to do with Bluetooth now.
                println("Bluetooth setup successful!")
            }
        }
    }
}

@Composable
fun FindMeButton(onClick: (transmitting: Boolean) -> Unit) {
    val interactionSource = remember { MutableInteractionSource() }
    var transmitting by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier
            .fillMaxSize(),
        verticalArrangement = Arrangement.Center,
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
                    onClick(transmitting)
                },
                interactionSource = interactionSource
            ) {
                Text(text = "Find Me!", fontSize = 40.sp)
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
    FindMeTheme {
        FindMeButton {}
    }
}