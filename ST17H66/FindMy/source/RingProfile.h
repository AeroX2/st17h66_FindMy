#ifndef RINGPROFILE_H
#define RINGPROFILE_H

#ifdef __cplusplus
extern "C" {
#endif

/*********************************************************************
    INCLUDES
*/

/*********************************************************************
    CONSTANTS
*/

// Profile Parameters
#define RING_ENABLE_BUZZER 0  // RW uint8 - Profile Characteristic 1 value

// Ring Profile Service UUID
#define RING_PROFILE_UUID 0xFFF0

// Ring Keys Profile Services bit fields
#define RING_PROFILE_SERVICE 0x00000001

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    MACROS
*/

/*********************************************************************
    Profile Callbacks
*/

// Callback when a characteristic value has changed
typedef void (*ringProfileChange_t)(uint8 paramID);

typedef struct {
  ringProfileChange_t
      pfnRingProfileChange;  // Called when characteristic value changes
} ringProfileChangeCBs_t;

/*********************************************************************
    API FUNCTIONS
*/

/*
    RingProfile_AddService- Initializes the Ring GATT Profile service by
   registering
            GATT attributes with the GATT server.

    @param   services - services to add. This is a bit map and can
                       contain more than one service.
*/

extern bStatus_t RingProfile_AddService(uint32 services);

/*
    RingProfile_RegisterAppCBs - Registers the application callback function.
                      Only call this function once.

      appCallbacks - pointer to application callbacks.
*/
extern bStatus_t RingProfile_RegisterAppCBs(ringProfileChangeCBs_t* appCallbacks);

/*
    RingProfile_SetParameter - Set a Ring GATT Profile parameter.

      param - Profile parameter ID
      len - length of data to right
      value - pointer to data to write.  This is dependent on
            the parameter ID and WILL be cast to the appropriate
            data type (example: data type of uint16 will be cast to
            uint16 pointer).
*/
// extern bStatus_t RingProfile_SetParameter(uint8 param, uint8 len, void*
// value);

/*
    RingProfile_GetParameter - Get a Ring GATT Profile parameter.

      param - Profile parameter ID
      value - pointer to data to write.  This is dependent on
            the parameter ID and WILL be cast to the appropriate
            data type (example: data type of uint16 will be cast to
            uint16 pointer).
*/
// extern bStatus_t RingProfile_GetParameter(uint8 param, void* value);

// extern bStatus_t simpleProfile_Notify(uint8 param, uint8 len, void* value);
/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* RINGPROFILE_H */
