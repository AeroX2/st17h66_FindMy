/**************************************************************************************************
*******
**************************************************************************************************/
#ifndef MULTI_H
#define MULTI_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
    INCLUDES
*/
#include "bcomdef.h"
#include "OSAL.h"
#include "gap.h"

#include "broadcaster.h"
#include "observer.h"

/*********************************************************************
    CONSTANTS
*/


/*********************************************************************
    VARIABLES
*/

/*********************************************************************
    MACROS
*/

/*********************************************************************
    TYPEDEFS
*/
//extern gapRolesCBs_t* pGapRoles_AppCGs;
//extern gapObserverRoleCB_t* pGapObserverRoleCB;

//extern void gapRole_ProcessGAPMsg(gapEventHdr_t* pMsg);
//extern void gapObserverRole_ProcessGAPMsg(gapEventHdr_t* pMsg);

/**
    @brief   Start the device in Observer role.  This function is typically
            called once during system startup.

    @param   pAppCallbacks - pointer to application callbacks

    @return  SUCCESS: Operation successful.<BR>
            bleAlreadyInRequestedMode: Device already started.<BR>
*/
extern bStatus_t GAPMultiRole_StartDevice(gapRolesCBs_t* pBroadcasterCallbacks, gapObserverRoleCB_t* pObserverCallbacks);

/**
    @brief   Set a parameter in the Observer Profile.

    @param   param - profile parameter ID: @ref GAPOBSERVERROLE_PROFILE_PARAMETERS
    @param   len - length of data to write
    @param   pValue - pointer to data to write.  This is dependent on
            the parameter ID and WILL be cast to the appropriate
            data type.

    @return  SUCCESS: Operation successful.<BR>
            INVALIDPARAMETER: Invalid parameter ID.<BR>
*/
extern bStatus_t GAPMultiRole_SetParameter(uint16 param, uint8 len, void* pValue);

/**
    @brief   Get a parameter in the Observer Profile.

    @param   param - profile parameter ID: @ref GAPOBSERVERROLE_PROFILE_PARAMETERS
    @param   pValue - pointer to buffer to contain the read data

    @return  SUCCESS: Operation successful.<BR>
            INVALIDPARAMETER: Invalid parameter ID.<BR>
*/
extern bStatus_t GAPMultiRole_GetParameter(uint16 param, void* pValue );

/**
    @brief   Start a device discovery scan.

    @param   mode - discovery mode: @ref GAP_DEVDISC_MODE_DEFINES
    @param   activeScan - TRUE to perform active scan
    @param   whiteList - TRUE to only scan for devices in the white list

    @return  SUCCESS: Discovery scan started.<BR>
            bleIncorrectMode: Invalid profile role.<BR>
            bleAlreadyInRequestedMode: Not available.<BR>
*/
extern bStatus_t GAPMultiRole_StartDiscovery(uint8 mode, uint8 activeScan, uint8 whiteList);

/**
    @brief   Cancel a device discovery scan.

    @return  SUCCESS: Cancel started.<BR>
            bleInvalidTaskID: Not the task that started discovery.<BR>
            bleIncorrectMode: Not in discovery mode.<BR>
*/
extern bStatus_t GAPMultiRole_CancelDiscovery();

/**
    @}
*/

/*  -------------------------------------------------------------------
    TASK API - These functions must only be called by OSAL.
*/

/**
    @internal

    @brief   Observer Profile Task initialization function.

    @param   taskId - Task ID.

    @return  void
*/
extern void GAPMultiRole_Init(uint8 taskId);

/**
    @internal

    @brief   Observer Profile Task event processing function.

    @param   taskId - Task ID
    @param   events - Events.

    @return  events not processed
*/
extern uint16 GAPMultiRole_ProcessEvent(uint8 taskId, uint16 events);

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* MULTI_H */
