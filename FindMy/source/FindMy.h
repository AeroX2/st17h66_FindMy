/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
  Filename:       FindMy.h
  Revised:         
  Revision:        

  Description:    This file contains the Simple BLE Peripheral sample application
                  definitions and prototypes.

 
**************************************************************************************************/

#ifndef FINDMY_H
#define FINDMY_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
 * INCLUDES
 */
#include <stdint.h>

/*********************************************************************
 * CONSTANTS
 */


// Simple BLE Peripheral Task Events
#define SBP_START_DEVICE_EVT  0x0001
#define SBP_START_ADVERTISING 0x0002
#define	SBP_START_DISCOVERY   0x0004
#define	SBP_START_BEEP        0x0008
#define	SBP_BEEP_TICK         0x0010
/*********************************************************************
 * MACROS
 */
#define MAC_DATA_LEN					6

extern uint8_t dev_mac_data[MAC_DATA_LEN];
extern uint8_t findMy_TaskID;
/*********************************************************************
 * FUNCTIONS
 */

/*
 * Task Initialization for the BLE Application
 */
extern void FindMy_Init(uint8_t task_id);

/*
 * Task Event Processor for the BLE Application
 */
extern uint16_t FindMy_ProcessEvent(uint8_t task_id, uint16_t events);

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* FINDMY_H */
