/*********************************************************************
    INCLUDES
*/
#include <stdlib.h>
#include <string.h>

#include "bcomdef.h"
#include "OSAL.h"
#include "linkdb.h"
#include "att.h"
#include "gatt.h"
#include "gatt_uuid.h"
#include "gattservapp.h"
#include "gapbondmgr.h"

#include "RingProfile.h"

/*********************************************************************
    MACROS
*/

/*********************************************************************
    CONSTANTS
*/

#define BUZZER_PASS "ring me plz"

#define SERVAPP_NUM_ATTR_SUPPORTED 21

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    GLOBAL VARIABLES
*/
// Ring Profile Service UUID: 0xFFF0
const uint8 ringProfileUUID[ATT_BT_UUID_SIZE] = {LO_UINT16(RING_PROFILE_UUID),
                                                 HI_UINT16(RING_PROFILE_UUID)};

// Characteristic 1 UUID: 0xFFF1
const uint8 ringProfileBuzzerEnableUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(RING_ENABLE_BUZZER), HI_UINT16(RING_ENABLE_BUZZER)};

/*********************************************************************
    EXTERNAL VARIABLES
*/

/*********************************************************************
    EXTERNAL FUNCTIONS
*/

/*********************************************************************
    LOCAL VARIABLES
*/

static ringProfileChangeCBs_t* ringProfile_AppCBs = NULL;

/*********************************************************************
    Profile Attributes - variables
*/

// Ring Profile Service attribute
static const gattAttrType_t ringProfileService = {ATT_BT_UUID_SIZE,
                                                  ringProfileUUID};

// Ring Profile Characteristic 1 Properties
static uint8 ringProfileEnableBuzzerProps = GATT_PROP_WRITE;

// Characteristic 1 Value
static uint8 ringProfileEnableBuzzer[1];  // = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,};

// Ring Profile Characteristic 1 User Description
static uint8 ringProfileEnableBuzzerDesc[] = "Start ringing the device\0";

/*********************************************************************
    Profile Attributes - Table
*/

static gattAttribute_t ringProfileAttrTbl[SERVAPP_NUM_ATTR_SUPPORTED] = {
    // Ring Profile Service
    {
        {ATT_BT_UUID_SIZE, primaryServiceUUID}, /* type */
        GATT_PERMIT_READ,                       /* permissions */
        0,                                      /* handle */
        (uint8*)&ringProfileService             /* pValue */
    },

    // Characteristic 1 Declaration
    {{ATT_BT_UUID_SIZE, characterUUID},
     GATT_PERMIT_READ,
     0,
     &ringProfileEnableBuzzerProps},

    // Characteristic Value 1
    {{ATT_BT_UUID_SIZE, ringProfileBuzzerEnableUUID},
     GATT_PERMIT_WRITE,
     0,
     &ringProfileEnableBuzzer[0]},

    // Characteristic 1 User Description
    {{ATT_BT_UUID_SIZE, charUserDescUUID},
     GATT_PERMIT_READ,
     0,
     ringProfileEnableBuzzerDesc},
};

/*********************************************************************
    LOCAL FUNCTIONS
*/
static uint8 ringProfile_ReadAttrCB(uint16 connHandle, gattAttribute_t* pAttr,
                                    uint8* pValue, uint16* pLen, uint16 offset,
                                    uint8 maxLen);
static bStatus_t ringProfile_WriteAttrCB(uint16 connHandle,
                                         gattAttribute_t* pAttr, uint8* pValue,
                                         uint16 len, uint16 offset);

//static void ringProfile_HandleConnStatusCB(uint16 connHandle, uint8 changeType);

/*********************************************************************
    PROFILE CALLBACKS
*/
// Ring Profile Service Callbacks
CONST gattServiceCBs_t ringProfileCBs = {
    ringProfile_ReadAttrCB,   // Read callback function pointer
    ringProfile_WriteAttrCB,  // Write callback function pointer
    NULL                      // Authorization callback function pointer
};

/*********************************************************************
    PUBLIC FUNCTIONS
*/

/*********************************************************************
    @fn      RingProfile_AddService

    @brief   Initializes the Ring Profile service by registering
            GATT attributes with the GATT server.

    @param   services - services to add. This is a bit map and can
                       contain more than one service.

    @return  Success or Failure
*/
bStatus_t RingProfile_AddService(uint32 services) {
  uint8 status = SUCCESS;
  if (services & RING_PROFILE_SERVICE) {
    // Register GATT attribute list and CBs with GATT Server App
    status = GATTServApp_RegisterService(ringProfileAttrTbl,
                                         GATT_NUM_ATTRS(ringProfileAttrTbl),
                                         &ringProfileCBs);
  }

  return (status);
}

/*********************************************************************
    @fn      RingProfile_RegisterAppCBs

    @brief   Registers the application callback function. Only call
            this function once.

    @param   callbacks - pointer to application callbacks.

    @return  SUCCESS or bleAlreadyInRequestedMode
*/
bStatus_t RingProfile_RegisterAppCBs(ringProfileChangeCBs_t* appCallbacks) {
  if (appCallbacks) {
    ringProfile_AppCBs = appCallbacks;
    return (SUCCESS);
  } else {
    return (bleAlreadyInRequestedMode);
  }
}

/*********************************************************************
    @fn          ringProfile_ReadAttrCB

    @brief       Read an attribute.

    @param       connHandle - connection message was received on
    @param       pAttr - pointer to attribute
    @param       pValue - pointer to data to be read
    @param       pLen - length of data to be read
    @param       offset - offset of the first octet to be read
    @param       maxLen - maximum length of data to be read

    @return      Success or Failure
*/
static uint8 ringProfile_ReadAttrCB(uint16 connHandle, gattAttribute_t* pAttr,
                                    uint8* pValue, uint16* pLen, uint16 offset,
                                    uint8 maxLen) {
  bStatus_t status = SUCCESS;

  // If attribute permissions require authorization to read, return error
  if (gattPermitAuthorRead(pAttr->permissions)) {
    // Insufficient authorization
    return (ATT_ERR_INSUFFICIENT_AUTHOR);
  }

  // Make sure it's not a blob operation (no attributes in the profile are long)
  if (offset > 0) {
    return (ATT_ERR_ATTR_NOT_LONG);
  }

  if (pAttr->type.len == ATT_BT_UUID_SIZE) {
    // 16-bit UUID
    uint16 uuid = BUILD_UINT16(pAttr->type.uuid[0], pAttr->type.uuid[1]);

    switch (uuid) {
      // No need for "GATT_SERVICE_UUID" or "GATT_CLIENT_CHAR_CFG_UUID" cases;
      default:
        *pLen = 0;
        status = ATT_ERR_ATTR_NOT_FOUND;
        break;
    }
  } else {
    // 128-bit UUID
    *pLen = 0;
    status = ATT_ERR_INVALID_HANDLE;
  }

  return (status);
}

/*********************************************************************
    @fn      ringProfile_WriteAttrCB

    @brief   Validate attribute data prior to a write operation

    @param   connHandle - connection message was received on
    @param   pAttr - pointer to attribute
    @param   pValue - pointer to data to be written
    @param   len - length of data
    @param   offset - offset of the first octet to be written

    @return  Success or Failure
*/
static bStatus_t ringProfile_WriteAttrCB(uint16 connHandle,
                                         gattAttribute_t* pAttr, uint8* pValue,
                                         uint16 len, uint16 offset) {
  bStatus_t status = SUCCESS;
  uint8 notifyApp = 0xFF;

  // If attribute permissions require authorization to write, return error
  if (gattPermitAuthorWrite(pAttr->permissions)) {
    // Insufficient authorization
    return (ATT_ERR_INSUFFICIENT_AUTHOR);
  }

  if (pAttr->type.len == ATT_BT_UUID_SIZE) {
    // 16-bit UUID
    uint16 uuid = BUILD_UINT16(pAttr->type.uuid[0], pAttr->type.uuid[1]);

    switch (uuid) {
      case RING_ENABLE_BUZZER:
        // Validate the value
        // Make sure it's not a blob oper
        if (offset != 0) {
          status = ATT_ERR_ATTR_NOT_LONG;
        }

        int strLen = strlen(BUZZER_PASS) + 1;
        char* buf = (char*) malloc(strLen);
        memcpy(buf, pValue, strLen);

        // Write the value
        if (status == SUCCESS && strstr(buf, BUZZER_PASS) != NULL) {
          notifyApp = RING_ENABLE_BUZZER;
        }

        break;

      case GATT_CLIENT_CHAR_CFG_UUID:
        status = GATTServApp_ProcessCCCWriteReq(connHandle, pAttr, pValue, len,
                                                offset, GATT_CLIENT_CFG_NOTIFY);
        break;

      default:
        status = ATT_ERR_ATTR_NOT_FOUND;
        break;
    }
  } else {
    // 128-bit UUID
    status = ATT_ERR_INVALID_HANDLE;
  }

  // If a charactersitic value changed then callback function to notify
  // application of change
  if ((notifyApp != 0xFF) && ringProfile_AppCBs &&
      ringProfile_AppCBs->pfnRingProfileChange) {
    ringProfile_AppCBs->pfnRingProfileChange(notifyApp);
  }

  return (status);
}

/*********************************************************************
*********************************************************************/
