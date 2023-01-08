/**************************************************************************************************
 *******
 **************************************************************************************************/

/**************************************************************************************************
  Filename:       findMy.c
  Revised:        
  Revision:       

  Description:    This file contains the Simple BLE Peripheral sample application
                  

**************************************************************************************************/
/*********************************************************************
 * INCLUDES
 */
#include <stdio.h>
 
#include "bcomdef.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"

#include "rf_phy_driver.h"
#include "global_config.h"

#include "hci.h"
#include "hci_tl.h"

//#include "gatt.h"
//#include "gapgattserver.h"
//#include "gattservapp.h"

#include "gap.h"
#include "gapbondmgr.h"

#include "ll.h"
#include "ll_hw_drv.h"
#include "ll_def.h"

#include "pwrmgr.h"

#include "FindMy.h"
#include "flash.h"

#include "broadcaster.h"
#include "observer.h"


/*********************************************************************
 * CONSTANTS
 */

// How often to perform periodic event
#define SBP_PERIODIC_EVT_PERIOD 8000

#define DEVINFO_SYSTEM_ID_LEN 8
#define DEVINFO_SYSTEM_ID 0

// Maximum number of scan responses
#define DEFAULT_MAX_SCAN_RES                  8

// Scan duration in ms
#define DEFAULT_SCAN_DURATION                 4000

// Discovey mode (limited, general, all)
#define DEFAULT_DISCOVERY_MODE                DEVDISC_MODE_ALL

#define DEFAULT_DISCOVERABLE_MODE GAP_ADTYPE_FLAGS_GENERAL

// Minimum connection interval (units of 1.25ms, 80=100ms) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_MIN_CONN_INTERVAL 8 //32//80

// Maximum connection interval (units of 1.25ms, 800=1000ms) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_MAX_CONN_INTERVAL 16 //48//800

// Slave latency to use if automatic parameter update request is enabled
#define DEFAULT_DESIRED_SLAVE_LATENCY 0

// Supervision timeout value (units of 10ms, 1000=10s) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_CONN_TIMEOUT 300 //1000

// Whether to enable automatic parameter update request when a connection is formed
#define DEFAULT_ENABLE_UPDATE_REQUEST TRUE

// Connection Pause Peripheral time value (in seconds)
#define DEFAULT_CONN_PAUSE_PERIPHERAL 6
//#define INVALID_CONNHANDLE 0xFFFF

// Default passcode
//#define DEFAULT_PASSCODE 0 //19655

// Length of bd addr as a string
//#define B_ADDR_STR_LEN 15
//#define RESOLVING_LIST_ENTRY_NUM 10

/*********************************************************************
 * build define
 */

/*********************************************************************
 * TYPEDEFS
 */

/*********************************************************************
 * GLOBAL VARIABLES
 */
perStatsByChan_t g_perStatsByChanTest;

/*********************************************************************
 * EXTERNAL VARIABLES
 */
volatile uint8_t g_current_advType = LL_ADV_CONNECTABLE_UNDIRECTED_EVT;

/*********************************************************************
 * EXTERNAL FUNCTIONS
 */

/*********************************************************************
 * LOCAL VARIABLES
 */
uint8 findMy_TaskID; // Task ID for internal task/event processing

static gaprole_States_t gapProfileState = GAPROLE_INIT;

uint8 dev_mac_data[MAC_DATA_LEN] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00
};
static uint8 public_key[] = {
    0x85,
    0x23,
    0xd8,
    0x8f,
    0x1a,
    0xbf,
    0xf6,
    0x88,
    0x99,
    0xaa,
    0xbb,
    0xcc,
    0xdd,
    0xef,
    0xfe,
    0xdd,
    0xcc,
    0xbb,
    0xaa,
    0x99,
    0x88,
    0x77,
    0x66,
    0x55,
    0x44,
    0x33,
    0x22,
    0x11
};

void set_addr_from_key(uint8* dev_mac_data, uint8* public_key) {
    dev_mac_data[0] = public_key[0] | 0xc0;
    dev_mac_data[1] = public_key[1];
    dev_mac_data[2] = public_key[2];
    dev_mac_data[3] = public_key[3];
    dev_mac_data[4] = public_key[4];
    dev_mac_data[5] = public_key[5];
};

void set_payload_from_key(uint8_t* payload, uint8_t* public_key) {
    /* copy last 22 bytes */
    osal_memcpy(&payload[7], &public_key[6], 22);
    /* append two bits of public key */
    payload[29] = public_key[0] >> 6;
}

/** Advertisement payload */
static uint8 advertData[] = {
    0x1e,
    /* Length (30) */
    0xff,
    /* Manufacturer Specific Data (type 0xff) */
    0x4c,
    0x00,
    /* Company ID (Apple) */
    0x12,
    0x19,
    /* Offline Finding type and length */
    0x00,
    /* State */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* First two bits */
    0x00,
    /* Hint (0x00) */
};

// GAP GATT Attributes
//static uint8 attDeviceName[GAP_DEVICE_NAME_LEN] = "FindMy";

/*********************************************************************
 * LOCAL FUNCTIONS
 */
static void findMy_processOSALMsg(osal_event_hdr_t * pMsg);
static void findMy_profileStateCB(gaprole_States_t newState);
static void findMy_observerEventCB( gapObserverRoleEvent_t *pEvent );

/*********************************************************************
 * PROFILE CALLBACKS
 */

// GAP Role Callbacks
static gapRolesCBs_t findMy_ProfileCBs = {
    findMy_profileStateCB, // Profile State Change Callbacks
    NULL                   // When a valid RSSI is read from controller (not used by application)
};

// GAP Role Callbacks
static const gapObserverRoleCB_t findMy_ObserverCBs ={
    NULL,                   // RSSI callback
    findMy_observerEventCB  // Event callback
};

/*********************************************************************
 * PUBLIC FUNCTIONS
 */

/*********************************************************************
 * @fn      FindMy_Init
 *
 * @brief   Initialization function for the Simple BLE Peripheral App Task.
 *          This is called during initialization and should contain
 *          any application specific initialization (ie. hardware
 *          initialization/setup, table initialization, power up
 *          notificaiton ... ).
 *
 * @param   task_id - the ID assigned by OSAL.  This ID should be
 *                    used to send messages and set timers.
 *
 * @return  none
 */
void FindMy_Init(uint8 task_id) {
    findMy_TaskID = task_id;
	
		// Setup Observer Profile
		uint8 scanRes = DEFAULT_MAX_SCAN_RES;
		GAPObserverRole_SetParameter(GAPOBSERVERROLE_MAX_SCAN_RES, sizeof(uint8), &scanRes);
		
		// Setup GAP
		GAP_SetParamValue(TGAP_GEN_DISC_SCAN, DEFAULT_SCAN_DURATION);
		GAP_SetParamValue(TGAP_LIM_DISC_SCAN, DEFAULT_SCAN_DURATION);

    // Setup the GAP
    //VOID GAP_SetParamValue(TGAP_CONN_PAUSE_PERIPHERAL, DEFAULT_CONN_PAUSE_PERIPHERAL);
	
		// device starts advertising upon initialization
		uint8 initialAdvertisingEnable = FALSE;

		uint8 enable_update_request = DEFAULT_ENABLE_UPDATE_REQUEST;
		uint8 advChnMap = GAP_ADVCHAN_37 | GAP_ADVCHAN_38 | GAP_ADVCHAN_39;

		// By setting this to zero, the device will go into the waiting state after
		// being discoverable for 30.72 second, and will not being advertising again
		// until the enabler is set back to TRUE
		uint16 gapRole_AdvertOffTime = 0;

		uint16 desired_min_interval = DEFAULT_DESIRED_MIN_CONN_INTERVAL;
		uint16 desired_max_interval = DEFAULT_DESIRED_MAX_CONN_INTERVAL;
		uint16 desired_slave_latency = DEFAULT_DESIRED_SLAVE_LATENCY;
		uint16 desired_conn_timeout = DEFAULT_DESIRED_CONN_TIMEOUT;

		uint8 peerPublicAddr[] = {
				0x01,
				0x02,
				0x03,
				0x04,
				0x05,
				0x06
		};

		set_addr_from_key(dev_mac_data, public_key);
		set_payload_from_key(advertData, public_key);
		
		uint8 advType = LL_ADV_NONCONNECTABLE_UNDIRECTED_EVT; // LL_ADV_NONCONNECTABLE_UNDIRECTED_EVT;//LL_ADV_SCANNABLE_UNDIRECTED_EVT;//LL_ADV_CONNECTABLE_LDC_DIRECTED_EVT;//;    // it seems a  bug to set GAP_ADTYPE_ADV_NONCONN_IND = 0x03

		GAPRole_SetParameter(GAPROLE_ADV_EVENT_TYPE, sizeof(uint8), &advType);
		GAPRole_SetParameter(GAPROLE_ADV_DIRECT_ADDR, sizeof(peerPublicAddr), peerPublicAddr);
		// set adv channel map
		GAPRole_SetParameter(GAPROLE_ADV_CHANNEL_MAP, sizeof(uint8), &advChnMap);
		// Set the GAP Role Parameters
		GAPRole_SetParameter(GAPROLE_ADVERT_ENABLED, sizeof(uint8), &initialAdvertisingEnable);
		GAPRole_SetParameter(GAPROLE_ADVERT_OFF_TIME, sizeof(uint16), &gapRole_AdvertOffTime);
		GAPRole_SetParameter(GAPROLE_ADVERT_DATA, sizeof(advertData), advertData);
		//GAPRole_SetParameter(GAPROLE_PARAM_UPDATE_ENABLE, sizeof(uint8), &enable_update_request);
		//GAPRole_SetParameter(GAPROLE_MIN_CONN_INTERVAL, sizeof(uint16), &desired_min_interval);
		//GAPRole_SetParameter(GAPROLE_MAX_CONN_INTERVAL, sizeof(uint16), &desired_max_interval);
		//GAPRole_SetParameter(GAPROLE_SLAVE_LATENCY, sizeof(uint16), &desired_slave_latency);
		//GAPRole_SetParameter(GAPROLE_TIMEOUT_MULTIPLIER, sizeof(uint16), &desired_conn_timeout);


    // Set the GAP Characteristics
    //GGS_SetParameter(GGS_DEVICE_NAME_ATT, GAP_DEVICE_NAME_LEN, attDeviceName);

    // Set advertising interval
		uint16 advInt = 5000; ///1600;//2400;//1600;//1600;//800;//1600;   // actual time = advInt * 625us

		GAP_SetParamValue(TGAP_LIM_DISC_ADV_INT_MIN, advInt);
		GAP_SetParamValue(TGAP_LIM_DISC_ADV_INT_MAX, advInt);
		GAP_SetParamValue(TGAP_GEN_DISC_ADV_INT_MIN, advInt);
		GAP_SetParamValue(TGAP_GEN_DISC_ADV_INT_MAX, advInt);
		
    // Initialize GATT attributes
    //GGS_AddService(GATT_ALL_SERVICES);           // GAP
    //GATTServApp_AddService(GATT_ALL_SERVICES);   // GATT attributes
    // DevInfo_AddService();                    // Device Information Service
    // SimpleProfile_AddService(GATT_ALL_SERVICES); // Simple GATT Profile
		
    //ATT_SetMTUSizeMax(23);
    //llInitFeatureSet2MPHY(FALSE);
    //llInitFeatureSetDLE(FALSE);

    // Setup a delayed profile startup
    osal_set_event(findMy_TaskID, SBP_START_DEVICE_EVT);
		
		// Setup a periodic scan
		osal_start_timerEx(findMy_TaskID, SBP_PERIODIC_EVT_PERIOD, 5000);

    // for receive HCI complete message
    GAP_RegisterForHCIMsgs(findMy_TaskID);
    LL_PLUS_PerStats_Init(&g_perStatsByChanTest);
    LOG("=====findMy_Init Done=======\n");
}

/*********************************************************************
 * @fn      FindMy_ProcessEvent
 *
 * @brief   Simple BLE Peripheral Application Task event processor.  This function
 *          is called to process all events for the task.  Events
 *          include timers, messages and any other user defined events.
 *
 * @param   task_id  - The OSAL assigned task ID.
 * @param   events - events to process.  This is a bit map and can
 *                   contain more than one event.
 *
 * @return  events not processed
 */
uint16 FindMy_ProcessEvent(uint8 task_id, uint16 events) {
    if (events & SYS_EVENT_MSG) {
        uint8* pMsg;

        if ((pMsg = osal_msg_receive(findMy_TaskID)) != NULL) {
            findMy_processOSALMsg((osal_event_hdr_t*) pMsg);

            // Release the OSAL message
            osal_msg_deallocate(pMsg);
        }

        // return unprocessed events
        return (events ^ SYS_EVENT_MSG);
    }

    if (events & SBP_START_DEVICE_EVT) {
        LOG("Device is starting up\n");
        // Start the Device
        LOG("Broadcaster %d\n", GAPRole_StartDevice(&findMy_ProfileCBs));
				//LOG("Observer %d\n", GAPObserverRole_StartDevice((gapObserverRoleCB_t*) &findMy_ObserverCBs));
			
        HCI_LE_ReadResolvingListSizeCmd();

        return (events ^ SBP_START_DEVICE_EVT);
    }
		
    // enable adv
    if (events & SBP_RESET_ADV_EVT) {
				LOG("Enabling advertisment\n");
        uint8 initialAdvertisingEnable = TRUE;
        GAPRole_SetParameter(GAPROLE_ADVERT_ENABLED, sizeof(uint8), &initialAdvertisingEnable);
        return (events ^ SBP_RESET_ADV_EVT);
    }
		
		if (events & SBP_PERIODIC_EVT_PERIOD) {
				LOG("Timer event!\n");
			  LOG("Return %d\n", GAPObserverRole_StartDiscovery(DEFAULT_DISCOVERY_MODE, FALSE, FALSE));
		}

    // Discard unknown events
    return 0;
}

/*********************************************************************
 * @fn      findMy_ProcessOSALMsg
 *
 * @brief   Process an incoming task message.
 *
 * @param   pMsg - message to process
 *
 * @return  none
 */
static void findMy_processOSALMsg(osal_event_hdr_t* pMsg) {
    hciEvt_CmdComplete_t* pHciMsg;

    switch (pMsg->event) {
				case HCI_GAP_EVENT_EVENT: {
						switch (pMsg->status) {
								case HCI_COMMAND_COMPLETE_EVENT_CODE:
										pHciMsg = (hciEvt_CmdComplete_t*) pMsg;
										LOG("==> HCI_COMMAND_COMPLETE_EVENT_CODE: %x\n", pHciMsg->cmdOpcode);
										//safeToDealloc = gapProcessHCICmdCompleteEvt( (hciEvt_CmdComplete_t *)pMsg );
										break;
								default:
										//safeToDealloc = FALSE;  // Send to app
										break;
						}
				}
    }
}

/*********************************************************************
 * @fn      profileStateCB
 *
 * @brief   Notification from the profile of a state change.
 *
 * @param   newState - new state
 *
 * @return  none
 */
static void findMy_profileStateCB(gaprole_States_t newState) {
    switch (newState) {
				case GAPROLE_STARTED: {
								extern uint8 ownPublicAddr[LL_DEVICE_ADDR_LEN];
								// update MAC.Attention to the sequence of MAC address!!!
								for (uint8 i = 0; i < LL_DEVICE_ADDR_LEN; i++) {
										ownPublicAddr[i] = dev_mac_data[LL_DEVICE_ADDR_LEN - 1 - i];
								}

								LOG("Gaprole_start:\n");
								osal_set_event(findMy_TaskID, SBP_RESET_ADV_EVT);
						}
						break;

				case GAPROLE_ADVERTISING: 
						LOG("Gaprole_adversting:\n");
						break;

				case GAPROLE_ERROR:
						break;

				default:
						break;
		}
    LOG("[GAP ROLE %d]\n", newState);
}

/*********************************************************************
 * @fn      observerEventCB
 *
 * @brief   Observer event callback function.
 *
 * @param   pEvent - pointer to event structure
 *
 * @return  none
 */
static void findMy_observerEventCB(gapObserverRoleEvent_t* pEvent) {
  switch (pEvent->gap.opcode) {
    case GAP_DEVICE_INIT_DONE_EVENT:
			LOG("BLE Observer initialized\n");
      break;

    case GAP_DEVICE_INFO_EVENT:
			LOG("BLE Observer info event\n");
      break;
      
    case GAP_DEVICE_DISCOVERY_EVENT:
			LOG("BLE Observer info event\n");
			for (int i = 0; i < pEvent->discCmpl.numDevs; i++) {
				uint8* addr = pEvent->discCmpl.pDevList[i].addr;
				LOG("%s\n", bdAddr2Str(addr));
			}
      break;
      
    default:
      break;
  }
	
  LOG("[GAP OBSERVER %d]\n", pEvent->gap.opcode);
}

char* bdAddr2Str(uint8* pAddr) {
    char hex[] = "0123456789ABCDEF";
    static char str[16];
    char* pStr = str;
    *pStr++ = '0';
    *pStr++ = 'x';
    // Start from end of addr
    pAddr += B_ADDR_LEN;

    for (uint8 i = B_ADDR_LEN; i > 0; i--) {
        *pStr++ = hex[*--pAddr >> 4];
        *pStr++ = hex[*pAddr & 0x0F];
    }

    *pStr = 0;
    return str;
}
