# st17h66_FindMy
Firmware for Lenze ST17h66 that advertises to the Apple Find My network, based on SDK v3.1.1.2

# AeroX2 Changes
- Long clicking and releasing activates the buzzer
- Short click stops the buzzer
- Beacon finds nearby Bluetooth advertisements and looks for a particular code, if found the buzzer goes off.

## Compile
To compile this firmware either arm-none-eabi-gcc and CMSIS headers, or Keil uVision are required. The GCC path does not work yet, so use Keil.

### Compile with Keil
This should work properly, just open the FindMy.uvprojx and build.

### Compile with GCC
```
$ git clone https://github.com/ARM-software/CMSIS_5
$ git clone https://github.com/biemster/st17h66_FindMy
$ cd st17h66_FindMy/FindMy
$ make
```
GCC with the Makefile currently creates a 90kB hex file, which I havent tested yet. The following things might be wrong with it:
1. The linker script `phy6202.ld` and startup code `startup_ARMCM0.c`.
  - I copied those from https://github.com/AloyseTech/PHY6202_GCC (thanks @AloyseTech!), but they are for the phy6202 chip (of which the 17h66 seems to be a clone). Also @AloyseTech seems to not have been finished with this work yet.
  - I actually have no clue what I'm doing here, this goes way beyond my expertise.
2. The phy62XX BLE core code for `lib/*.lib`.
  - Located in `lib/{rf,sec,ble_*}`, is likely the sources for the `.lib` files but I'm not sure. They don't seem to be open source, but leaked from https://github.com/duanmubingshuai/project.
  - They are necessary because the GCC linker does not accept the provided `.lib` files.
  - It's quite likely the correct source, since the precompiled libraries have the same `s_company_id = "PHY+62XXPLUS0504"` as the C code.
3. The `bb_rom_sym_m0.gcc` file.
  - This contains a lot of addresses for functions and variables, no clue where they come from. I followed what @AloyseTech did (thanks again @AloyseTech!).
  - This might be hit or miss, I don't know if compiling the firmware with GCC will put those symbols on different addresses, or maybe those objects are in some sort of bootloader.
