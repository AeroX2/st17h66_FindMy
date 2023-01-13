/**************************************************************************************************
*******
**************************************************************************************************/
/*********************************************************************
    INCLUDES
*/
#include "bcomdef.h"
#include "OSAL.h"
#include "osal_cbtimer.h"
#include "osal_snv.h"
#include "hci_tl.h"
#include "gap.h"

#include "Multi.h"

#include "broadcaster.c"
#include "observer.c"

/*********************************************************************
    MACROS
*/

/*********************************************************************
    CONSTANTS
*/

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    GLOBAL VARIABLES
*/

/*********************************************************************
    EXTERNAL VARIABLES
*/

/*********************************************************************
    EXTERNAL FUNCTIONS
*/

/*********************************************************************
    LOCAL VARIABLES
*/

// Task ID
static uint8 gapMultiRoleTaskId;

/*********************************************************************
    Profile Parameters - reference GAPCENTRALROLE_PROFILE_PARAMETERS for
    descriptions
*/

/*********************************************************************
    LOCAL FUNCTIONS
*/
static void gapMultiRole_ProcessOSALMsg(osal_event_hdr_t* pMsg);
static void gapMultiRole_ProcessGAPMsg(gapEventHdr_t* pMsg);

/*********************************************************************
    PUBLIC FUNCTIONS
*/

/**
    @brief   Start the device in Multi role.  This function is typically
            called once during system startup.

    Public function defined in Multi.h.
*/
bStatus_t GAPMultiRole_StartDevice(gapRolesCBs_t* pBroadcasterCallbacks,
                                   gapObserverRoleCB_t* pObserverCallbacks) {
  pGapRoles_AppCGs = pBroadcasterCallbacks;
  pGapObserverRoleCB = pObserverCallbacks;

  // TODO Hardcoding this value for the time being.
  uint8 gapMultiRoleMaxScanRes = 8;
  return GAP_DeviceInit(gapMultiRoleTaskId,
                        GAP_PROFILE_BROADCASTER | GAP_PROFILE_OBSERVER,
                        gapMultiRoleMaxScanRes, NULL, NULL, NULL);
}

/**
    @brief   Set a parameter in the Multi Profile.

    Public function defined in observer.h.
*/
bStatus_t GAPMultiRole_SetParameter(uint16 param, uint8 len, void* pValue) {
  bStatus_t ret1 = GAPObserverRole_SetParameter(param, len, pValue);
  bStatus_t ret2 = GAPRole_SetParameter(param, len, pValue);

	if (ret1 == SUCCESS || ret2 == SUCCESS) return SUCCESS;
	
	LOG("Ret1 %d\n", ret1);
	LOG("Ret2 %d\n", ret2);
  return ret1;
}

/**
    @brief   Get a parameter in the Multi Profile.

    Public function defined in Multi.h.
*/
bStatus_t GAPMultiRole_GetParameter(uint16 param, void* pValue) {
  bStatus_t ret1 = GAPObserverRole_GetParameter(param, pValue);
  bStatus_t ret2 = GAPRole_GetParameter(param, pValue);

  if (ret1 == SUCCESS || ret2 == SUCCESS) return SUCCESS;
	
	LOG("Ret1 %d\n", ret1);
	LOG("Ret2 %d\n", ret2);
  return ret1;
}

/**
    @brief   Start a device discovery scan.

    Public function defined in Multi.h.
*/
bStatus_t GAPMultiRole_StartDiscovery(uint8 mode, uint8 activeScan,
                                      uint8 whiteList) {
  gapDevDiscReq_t params;
  params.taskID = gapMultiRoleTaskId;
  params.mode = mode;
  params.activeScan = activeScan;
  params.whiteList = whiteList;
  return GAP_DeviceDiscoveryRequest(&params);
}

/**
    @brief   Cancel a device discovery scan.

    Public function defined in Multi.h.
*/
bStatus_t GAPMultiRole_CancelDiscovery() {
  return GAP_DeviceDiscoveryCancel(gapMultiRoleTaskId);
}

/**
    @brief   Multi Profile Task initialization function.

    @param   taskId - Task ID.

    @return  void
*/
void GAPMultiRole_Init(uint8 taskId) {
  gapMultiRoleTaskId = taskId;
  GAPObserverRole_Init(taskId);
  GAPRole_Init(taskId);
}

/**
    @brief   Multi Profile Task event processing function.

    @param   taskId - Task ID
    @param   events - Events.

    @return  events not processed
*/
uint16 GAPMultiRole_ProcessEvent(uint8 taskId, uint16 events) {
  if (events & SYS_EVENT_MSG) {
    uint8* pMsg;

    if ((pMsg = osal_msg_receive(gapMultiRoleTaskId)) != NULL) {
      gapMultiRole_ProcessOSALMsg((osal_event_hdr_t*)pMsg);
      // Release the OSAL message
      osal_msg_deallocate(pMsg);
    }

    // return unprocessed events
    return (events ^ SYS_EVENT_MSG);
  }

  // Copied from broadcaster.c
  if (events & START_ADVERTISING_EVT) {
    if (gapRole_AdvEnabled) {
      gapAdvertisingParams_t params;
      // Setup advertisement parameters
      params.eventType = gapRole_AdvEventType;
      params.initiatorAddrType = gapRole_AdvDirectType;
      osal_memcpy(params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN);
      params.channelMap = gapRole_AdvChanMap;
      params.filterPolicy = gapRole_AdvFilterPolicy;

      if (GAP_MakeDiscoverable(gapRole_TaskID, &params) != SUCCESS) {
        gapRole_state = GAPROLE_ERROR;

        if (pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange) {
          pGapRoles_AppCGs->pfnStateChange(gapRole_state);
        }
      }
    }

    return (events ^ START_ADVERTISING_EVT);
  }

  // Discard unknown events
  return 0;
}

/*********************************************************************
    @fn      gapMultiRole_ProcessOSALMsg

    @brief   Process an incoming task message.

    @param   pMsg - message to process

    @return  none
*/
static void gapMultiRole_ProcessOSALMsg(osal_event_hdr_t* pMsg) {
  switch (pMsg->event) {
    case GAP_MSG_EVENT:
      gapObserverRole_ProcessGAPMsg((gapEventHdr_t*)pMsg);
      gapRole_ProcessGAPMsg((gapEventHdr_t*)pMsg);
      break;

    default:
      break;
  }
}

/*********************************************************************
*********************************************************************/
