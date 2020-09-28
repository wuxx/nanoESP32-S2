nanoESP32-S2
-----------
* [nanoESP32-S2 Introduce](#nanoESP32-S2-Introduce) 
* [Module Specifications](#Module-Specifications)
* [ESP32-S2 vs ESP32](#ESP32-S2-vs-ESP32)
* [Demo](#Demo)
* [Product Link](#Product-Link)
* [Reference](#Reference)


# nanoESP32-S2 Introduce
nanoESP32-S2 is ESP32-S2 dev board made by MuseLab, base on ESP32-S2 Modules manufactured by Expressif, with on-board usb-to-serial, TYPE-C, RGB LED, the pin is compatible with Expressif's official development board ESP32-S2-Saola series, and the dual-USB include usb-to-serial and the USB ESP32-S2 itself, more convenient for development and test.  
![nanoESP32-S2](https://github.com/wuxx/nanoesp32-s2/blob/master/doc/nanoESP32-S2.jpg)

# Module Specifications 
nanoESP32-S2 support four Modules made by Espressif, the differences between the modules are explained as follows
Module|PCB Antenna | IPEX Antenna|PSRAM|
----|----|----|-----|
ESP32-S2-WROOM | Yes | No |No|
ESP32-S2-WROOM-I | No  | Yes|No|
ESP32-S2-WROVER | Yes   | No|Yes (2MB)|
ESP32-S2-WROVER-I | No  | Yes | Yes (2MB)|

# ESP32-S2 vs ESP32
Compared with ESP32-S2 and ESP32, the difference is explained as follows
Module|ESP32 | ESP32-S2|
----|----|----|
Microcontroller | Xtensa dual-core 32-bit LX6 | Xtensa single-core 32-bit LX7 |
Clock Frequency | 160/240 MHz | 160/240 MHz|
Co-processor | ULP   |  ULP (RISC-V)|
SRAM | 520 KB| 320 KB |
ROM | 448 KB| 128 KB |
RTC Memory | 16 KB| 16 KB |
External SPIRAM | Up to 16MB| Up to 128MB |
External Flash | No| Up to 1G |
Wi-Fi (802.11 b/g/n) | HT20 | HT20 |
ESP-MESH | Yes| Yes |
Bluetooth | BT 4.2 BR/EDR & BLE |  No |
Ethernet | 10/100 Mbps| No |
CAN | 2.0| No |
Time of Flight |  No | Yes |
GPIO (total) | 34| 43 |
Touch Sensors | 10 | 14 |
SPI | 4| 4 (OSPI) |
I2C | 2| 2 |
I2S | 2| 1 |
UART | 3 | 2 |
ADC | 18 (12-bit)| 20 (12-bit) |
DAC | 2 (8-bit)| 2 (8-bit) |
PWM (soft) | 16 | 8 |
SDMMC | Yes| No |
RMT (remote control) | Yes| Yes |
USB OTG | No| Yes |
LCD Interface | No| Yes |
Camera Interface | No| Yes |
Temperature sensor | Yes| Yes |
Hall sensor | Yes| No |
Security | Secure boot Flash encryption 1024-bit OTP| Secure boot Flash encryption 4096-bit OTP |
Crypto | AES, SHA-2, RSA, ECC, RNG| AES-128/192/256, SHA-2, RSA, RNG, HMAC, Digital Signature|
Low Power Consumption | 10uA deep sleep| Automatic RF power management 5uA in idle mode 24uA at 1% duty cycle |


# Demo
The preset factory test firmware source code is located in the demo directory. and the firmware is in firmware directory, expected that the RGB LED should start to flash after power-on. One of the two TYPE-C interfaces is CH340 USB for debugging and downloading, and the other is the USB of ESP32-S2, when plug ESP32-S2 USB, a U disk named "ESP32-S2 MSC" and a CDC serial device are expected, how to compile the source code show here (for reference, may be outdated, cause the esp-idf is always updating)
```
$git clone https://github.com/espressif/esp-idf.git
$cd /path/to/esp-idf && ./install.sh && . ./export.sh && cd -
$git clone https://github.com/hathach/tinyusb.git
$cd tinyusb/examples/device/cdc_msc_freertos/
$idf.py set-target esp32s2
$idf.py -p /dev/ttyUSB0 flash monitor
```
# Product Link
[nanoESP32-S2 Board](https://www.aliexpress.com/item/1005001403045642.html?gps-id=pcStoreNewArrivals&scm=1007.23409.123629.0&scm_id=1007.23409.123629.0&scm-url=1007.23409.123629.0&pvid=6c59d14d-bb7b-4d0f-b0b8-fc5f6ae78288&spm=a2g0o.store_home.smartNewArrivals_1285899620.1005001403045642)

# Reference
### esp-idf
https://github.com/espressif/esp-idf
### esp32-s2 get-started
https://docs.espressif.com/projects/esp-idf/en/latest/esp32s2/get-started/
### esp32-s2
https://www.espressif.com/zh-hans/products/socs/esp32-s2
