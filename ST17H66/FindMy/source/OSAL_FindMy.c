/**************************************************************************************************
 *******
 **************************************************************************************************/

/**************************************************************************************************
    Filename:       OSAL_SimpleBLEPeripheral.c
    Revised:
    Revision:

    Description:    This file contains function that allows user setup tasks



**************************************************************************************************/

/**************************************************************************************************
                                              INCLUDES
 **************************************************************************************************/
#if (APP_CFG == 0)
#include "OSAL.h"
#include "OSAL_Tasks.h"

/* LL */
#include "ll.h"

/* HCI */
#include "hci_tl.h"

#if defined(OSAL_CBTIMER_NUM_TASKS)
#include "osal_cbtimer.h"
#endif

/* L2CAP */
#include "l2cap.h"

/* GAP */
#include "gap.h"

/* GATT */
#include "gatt.h"
#include "gattservapp.h"

/* Profiles */
#include "gapbondmgr.h"
#include "peripheral.h"

/* Application */
#include "FindMy.h"

/*********************************************************************
    GLOBAL VARIABLES
*/

// The order in this table must be identical to the task initialization calls
// below in osalInitTask.
const pTaskEventHandlerFn tasksArr[] = {
    LL_ProcessEvent,   // task 0
    HCI_ProcessEvent,  // task 1
#if defined(OSAL_CBTIMER_NUM_TASKS)
    OSAL_CBTIMER_PROCESS_EVENT(osal_CbTimerProcessEvent),  // task 3
#endif
		L2CAP_ProcessEvent,
		SM_ProcessEvent,
    GAP_ProcessEvent,
		GATT_ProcessEvent,
    GAPRole_ProcessEvent,
    // GAPBondMgr_ProcessEvent,
    GATTServApp_ProcessEvent,
    FindMy_ProcessEvent,
};

const uint8 tasksCnt = sizeof(tasksArr) / sizeof(tasksArr[0]);
uint16* tasksEvents;

/*********************************************************************
    FUNCTIONS
 *********************************************************************/

/*********************************************************************
    @fn      osalInitTasks

    @brief   This function invokes the initialization function for each task.

    @param   void

    @return  none
*/
void osalInitTasks(void) {
  uint8 taskID = 0;
  tasksEvents = (uint16*)osal_mem_alloc(sizeof(uint16) * tasksCnt);
  osal_memset(tasksEvents, 0, (sizeof(uint16) * tasksCnt));
  /* LL Task */
  LL_Init(taskID++);
  /* HCI Task */
  HCI_Init(taskID++);
	#if defined(OSAL_CBTIMER_NUM_TASKS)
	/* Callback Timer Tasks */
	osal_CbTimerInit(taskID);
	taskID += OSAL_CBTIMER_NUM_TASKS;
	#endif
	/* L2CAP Task */
	L2CAP_Init(taskID++);
	/* SM Task */
	SM_Init(taskID++);
	/* GAP Task */
	GAP_Init(taskID++);
	/* GATT Task */
	GATT_Init(taskID++);
	/* Profiles */
	GAPRole_Init(taskID++);
	/* Bond manager */
	// GAPBondMgr_Init(taskID++);
	/* GATT Serv */
	GATTServApp_Init(taskID++);

  /* Application */
  FindMy_Init(taskID++);
}
#endif
/*********************************************************************
>>>>>>> Stashed changes
 *********************************************************************/