/**************************************************************************************************
 *******
 **************************************************************************************************/

/**************************************************************************************************
  Filename:       findMy.c
  Revised:
  Revision:

  Description:    This file contains the Simple BLE Peripheral sample
application


**************************************************************************************************/
/*********************************************************************
 * INCLUDES
 */
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "gap.h"
#include "hci.h"

#include "ll.h"
#include "ll_hw_drv.h"

#include "gatt.h"
#include "gapgattserver.h"
#include "gattservapp.h"
//#include "devinfoservice.h"
#include "RingProfile.h"

#include "peripheral.h"

#include "pwm.h"
#include "key.h"

#include "FindMy.h"

/*********************************************************************
 * CONSTANTS
 */
#define DEFAULT_DISCOVERABLE_MODE GAP_ADTYPE_FLAGS_GENERAL

// Minimum connection interval (units of 1.25ms, 80=100ms) if automatic
// parameter update request is enabled
#define DEFAULT_DESIRED_MIN_CONN_INTERVAL 8  // 32//80

// Maximum connection interval (units of 1.25ms, 800=1000ms) if automatic
// parameter update request is enabled
#define DEFAULT_DESIRED_MAX_CONN_INTERVAL 16  // 48//800

// Slave latency to use if automatic parameter update request is enabled
#define DEFAULT_DESIRED_SLAVE_LATENCY 0

// Supervision timeout value (units of 10ms, 1000=10s) if automatic parameter
// update request is enabled
#define DEFAULT_DESIRED_CONN_TIMEOUT 300  // 1000

// Whether to enable automatic parameter update request when a connection is
// formed
#define DEFAULT_ENABLE_UPDATE_REQUEST TRUE

// Connection Pause Peripheral time value (in seconds)
#define DEFAULT_CONN_PAUSE_PERIPHERAL 6

/*********************************************************************
 * build define
 */

/*********************************************************************
 * TYPEDEFS
 */

/*********************************************************************
 * GLOBAL VARIABLES
 */

/*********************************************************************
 * EXTERNAL VARIABLES
 */

/*********************************************************************
 * EXTERNAL FUNCTIONS
 */

/*********************************************************************
 * LOCAL VARIABLES
 */
uint8 taskId;  // Task ID for internal task/event processing

uint8 devMacData[6] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
/*static uint8 publicKey[] = {0x3a, 0x8f, 0xbe, 0xcc, 0x04, 0x36, 0xba,
                            0x88, 0x42, 0x05, 0x8b, 0x7b, 0xd2, 0x5f,
                            0xa9, 0x06, 0x16, 0x23, 0x38, 0x22, 0x2d,
                            0xff, 0x9d, 0xde, 0xef, 0x17, 0xf1, 0xb1};*/
static uint8 publicKey[] = {0x8c, 0xf8, 0x3a, 0x47, 0x6e, 0x3a, 0x6c,
                            0x09, 0x99, 0xaa, 0x26, 0x35, 0xee, 0x1c,
                            0x53, 0xeb, 0x6d, 0x94, 0xd7, 0x72, 0xdb,
                            0x34, 0x1d, 0xd1, 0x3a, 0xa1, 0x90, 0x52};

void setAddrFromKey(uint8* devMacData, uint8* publicKey) {
  devMacData[0] = publicKey[0] | 0xc0;
  devMacData[1] = publicKey[1];
  devMacData[2] = publicKey[2];
  devMacData[3] = publicKey[3];
  devMacData[4] = publicKey[4];
  devMacData[5] = publicKey[5];
};

void setPayloadFromKey(uint8_t* payload, uint8_t* publicKey) {
  /* copy last 22 bytes */
  osal_memcpy(&payload[7], &publicKey[6], 22);
  /* append two bits of public key */
  payload[29] = publicKey[0] >> 6;
}

/** Advertisement payload */
static uint8 advertData[] = {
    0x1e,
    /* Length (30) */
    0xff,
    /* Manufacturer Specific Data (type 0xff) */
    0x4c, 0x00,
    /* Company ID (Apple) */
    0x12, 0x19,
    /* Offline Finding type and length */
    0x00,
    /* State */
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    /* First two bits */
    0x00,
    /* Hint (0x00) */
};

static uint8 attDeviceName[GAP_DEVICE_NAME_LEN] = "FindMy";

pwm_ch_t pwmCh;
int beepCount = 1000;

/*********************************************************************
 * LOCAL FUNCTIONS
 */
static void advInit();
static void keyPressEvt(uint8_t i, key_evt_t keyEvt);
static void processOSALMsg(osal_event_hdr_t* pMsg);
static void peripheralEventCB(gaprole_States_t newState);
static void ringProfileChangeCB(uint8 paramID);

/*********************************************************************
 * PROFILE CALLBACKS
 */

// GAP Role Callbacks
static gapRolesCBs_t peripheralCBs = {
    peripheralEventCB,  // Profile State Change Callbacks
    NULL  // When a valid RSSI is read from controller (not used by application)
};

 static ringProfileChangeCBs_t ringProfileChangeCBs = {
  ringProfileChangeCB    // Charactersitic value change callback
};

void FindMy_Init(uint8 task_id) {
  taskId = task_id;

  pwmCh.pwmN = PWM_CH0;
  pwmCh.pwmPin = P9;
  pwmCh.pwmDiv = PWM_CLK_NO_DIV;
  pwmCh.pwmMode = PWM_CNT_UP;
  pwmCh.pwmPolarity = PWM_POLARITY_FALLING;

  key_state.key[0].pin = P15;
  for (int i = 0; i < HAL_KEY_NUM; i++) {
    key_state.key[i].state = HAL_STATE_KEY_IDLE;
    key_state.key[i].idle_level = HAL_LOW_IDLE;
  }

  key_state.task_id = taskId;
  key_state.key_callbank = keyPressEvt;
  key_init();

  // Set the GAP Characteristics
  GAP_SetParamValue(TGAP_CONN_PAUSE_PERIPHERAL, DEFAULT_CONN_PAUSE_PERIPHERAL);

  GGS_SetParameter(GGS_DEVICE_NAME_ATT, GAP_DEVICE_NAME_LEN, attDeviceName);

  // Setup advertising data
  advInit();

  /*uint32 passkey = 0;
  uint8 pairMode = GAPBOND_PAIRING_MODE_WAIT_FOR_REQ;
  uint8 mitm = false;
  uint8 ioCap = GAPBOND_IO_CAP_NO_INPUT_NO_OUTPUT;
  uint8 bonding = false;
  GAPBondMgr_SetParameter(GAPBOND_DEFAULT_PASSCODE, sizeof(uint32), &passkey);
  GAPBondMgr_SetParameter(GAPBOND_PAIRING_MODE, sizeof(uint8), &pairMode);
  GAPBondMgr_SetParameter(GAPBOND_MITM_PROTECTION, sizeof(uint8), &mitm);
  GAPBondMgr_SetParameter(GAPBOND_IO_CAPABILITIES, sizeof(uint8), &ioCap);
  GAPBondMgr_SetParameter(GAPBOND_BONDING_ENABLED, sizeof(uint8), &bonding);*/

  // GATT_InitClient();
  GGS_AddService(GATT_ALL_SERVICES);          // GAP
  GATTServApp_AddService(GATT_ALL_SERVICES);  // GATT attributes
  // DevInfo_AddService();                       // Device Information Service
  // SimpleProfile_AddService(GATT_ALL_SERVICES);  // Simple GATT Profile
  RingProfile_AddService(GATT_ALL_SERVICES);

  // Setup a delayed profile startup
  osal_set_event(taskId, SBP_START_DEVICE_EVT);

  LOG("=====Init Done=======\n");
}

void advInit() {
  setAddrFromKey(devMacData, publicKey);
  setPayloadFromKey(advertData, publicKey);
  GAPRole_SetParameter(GAPROLE_ADVERT_DATA, sizeof(advertData), advertData);

  uint8 advType = GAP_ADTYPE_ADV_IND;
  GAPRole_SetParameter(GAPROLE_ADV_EVENT_TYPE, sizeof(uint8), &advType);

  uint8 peerPublicAddr[] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06};
  GAPRole_SetParameter(GAPROLE_ADV_DIRECT_ADDR, sizeof(peerPublicAddr),
                       peerPublicAddr);

  // set adv channel map
  uint8 advChnMap = GAP_ADVCHAN_ALL;
  GAPRole_SetParameter(GAPROLE_ADV_CHANNEL_MAP, sizeof(uint8), &advChnMap);

  // Set the GAP Role Parameters
  // device starts advertising upon initialization
  uint8 initialAdvertisingEnable = false;
  GAPRole_SetParameter(GAPROLE_ADVERT_ENABLED, sizeof(uint8),
                       &initialAdvertisingEnable);

  // By setting this to zero, the device will go into the waiting state after
  // being discoverable for 30.72 second, and will not being advertising again
  // until the enabler is set back to TRUE
  uint16 gapRole_AdvertOffTime = 0;
  GAPRole_SetParameter(GAPROLE_ADVERT_OFF_TIME, sizeof(uint16),
                       &gapRole_AdvertOffTime);

  uint8 enableUpdateRequest = DEFAULT_ENABLE_UPDATE_REQUEST;
  GAPRole_SetParameter(GAPROLE_PARAM_UPDATE_ENABLE, sizeof(uint8),
                       &enableUpdateRequest);

  uint16 desiredMinInterval = DEFAULT_DESIRED_MIN_CONN_INTERVAL;
  GAPRole_SetParameter(GAPROLE_MIN_CONN_INTERVAL, sizeof(uint16),
                       &desiredMinInterval);

  uint16 desiredMaxInterval = DEFAULT_DESIRED_MAX_CONN_INTERVAL;
  GAPRole_SetParameter(GAPROLE_MAX_CONN_INTERVAL, sizeof(uint16),
                       &desiredMaxInterval);

  uint16 desiredSlaveLatency = DEFAULT_DESIRED_SLAVE_LATENCY;
  GAPRole_SetParameter(GAPROLE_SLAVE_LATENCY, sizeof(uint16),
                       &desiredSlaveLatency);

  uint16 desiredConnTimeout = DEFAULT_DESIRED_CONN_TIMEOUT;
  GAPRole_SetParameter(GAPROLE_TIMEOUT_MULTIPLIER, sizeof(uint16),
                       &desiredConnTimeout);

  // Set advertising interval
  uint16 advInt = 5000;  /// 1600;//2400;//1600;//1600;//800;//1600;   // actual
                         /// time = advInt * 625us
  GAP_SetParamValue(TGAP_LIM_DISC_ADV_INT_MIN, advInt);
  GAP_SetParamValue(TGAP_LIM_DISC_ADV_INT_MAX, advInt);
  GAP_SetParamValue(TGAP_GEN_DISC_ADV_INT_MIN, advInt);
  GAP_SetParamValue(TGAP_GEN_DISC_ADV_INT_MAX, advInt);
}

void keyPressEvt(uint8_t i, key_evt_t keyEvt) {
  switch (keyEvt) {
    case HAL_KEY_EVT_PRESS:
      break;

    case HAL_KEY_EVT_RELEASE:
      LOG("Release\n");
      beepCount = 1000;
      osal_stop_timerEx(taskId, SBP_BEEP_TICK);
      hal_pwm_ch_stop(pwmCh);
      break;

    case HAL_KEY_EVT_LONG_RELEASE:
      LOG("Long release\n");
      beepCount = 1000;
      osal_set_event(taskId, SBP_START_BEEP);
      break;

    default:
      break;
  }
}

uint16 FindMy_ProcessEvent(uint8 task_id, uint16 events) {
  if (events & HAL_KEY_EVENT) {
    for (uint8 i = 0; i < HAL_KEY_NUM; ++i) {
      if ((key_state.temp[i].in_enable == TRUE) ||
          (key_state.key[i].state == HAL_STATE_KEY_RELEASE_DEBOUNCE)) {
        gpio_key_timer_handler(i);
      }
    }

    return (events ^ HAL_KEY_EVENT);
  }

  if (events & SBP_START_DEVICE_EVT) {
    LOG("Device is starting up\n");
    // Start the Device
    GAPRole_StartDevice(&peripheralCBs);
	  RingProfile_RegisterAppCBs(&ringProfileChangeCBs);

    LOG("Device finished startup\n");

    return (events ^ SBP_START_DEVICE_EVT);
  }

  if (events & SBP_START_ADVERTISING) {
    LOG("Advertising!\n");

    uint8 advertisementEnable = true;
    GAPRole_SetParameter(GAPROLE_ADVERT_ENABLED, sizeof(uint8),
                         &advertisementEnable);
    return (events ^ SBP_START_ADVERTISING);
  }

  if (events & SBP_START_BEEP) {
    LOG("beeping\n");
    if (beepCount >= 1000) {
      beepCount = 0;

      osal_set_event(taskId, SBP_BEEP_TICK);
    }

    return (events ^ SBP_START_BEEP);
  }

  if (events & SBP_BEEP_TICK) {
    beepCount++;

    int soundCount = beepCount % 100;
    if (soundCount == 0) {
      int z = 16000000 / 2730;
      pwmCh.cntTopVal = z;
      pwmCh.cmpVal = z / 2;
      hal_pwm_ch_start(pwmCh);
    } else if (soundCount == 10) {
      hal_pwm_ch_stop(pwmCh);
    } else if (soundCount == 10 + 5) {
      int z = 16000000 / 3000;
      pwmCh.cntTopVal = z;
      pwmCh.cmpVal = z / 2;
      hal_pwm_ch_start(pwmCh);
    } else if (soundCount == 10 + 5 + 10) {
      hal_pwm_ch_stop(pwmCh);
    } else if (soundCount == 10 + 5 + 10 + 5) {
      int z = 16000000 / 2730;
      pwmCh.cntTopVal = z;
      pwmCh.cmpVal = z / 2;
      hal_pwm_ch_start(pwmCh);
    } else if (soundCount == 10 + 5 + 10 + 5 + 10) {
      hal_pwm_ch_stop(pwmCh);
    }

    if (beepCount >= 1000) {
      hal_pwm_ch_stop(pwmCh);
    } else {
      osal_start_timerEx(taskId, SBP_BEEP_TICK, 10);
    }
    return (events ^ SBP_BEEP_TICK);
  }

  // Discard unknown events
  return 0;
}

static void peripheralEventCB(gaprole_States_t newState) {
  switch (newState) {
    case GAPROLE_STARTED: {
      extern uint8 ownPublicAddr[LL_DEVICE_ADDR_LEN];
      // update MAC.Attention to the sequence of MAC address!!!
      for (uint8 i = 0; i < LL_DEVICE_ADDR_LEN; i++) {
        ownPublicAddr[i] = devMacData[LL_DEVICE_ADDR_LEN - 1 - i];
      }

      osal_set_event(taskId, SBP_START_ADVERTISING);

      LOG("Mac address set\n");
    } break;

    case GAPROLE_ADVERTISING:
      LOG("Advertising\n");
      break;

    case GAPROLE_ERROR:
      LOG("Error occurred\n");
      break;

    default:
      break;
  }
  LOG("Peripheral event %d\n", newState);
}

static void ringProfileChangeCB(uint8 paramID) {
	switch (paramID) {
		case RING_ENABLE_BUZZER:
		  osal_set_event(taskId, SBP_START_BEEP);
		  break;
	}
}