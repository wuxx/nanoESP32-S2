nanoESP32-S2
-----------
* [nanoESP32-S2介绍](#nanoESP32-S2介绍) 
* [模组规格](#模组规格)
* [ESP32-S2 vs ESP32](#ESP32-S2-vs-ESP32)
* [demo说明](#demo说明)
* [产品链接](#产品链接)
* [参考](#参考)


# nanoESP32-S2介绍
nanoESP32-S2 是MuseLab基于乐鑫ESP32-S2系列模组推出的开发板，板载USB转串口，TYPE-C、全彩LED，引脚兼容官方开发板，同时引出调试烧录串口和ESP32-S2本身的USB接口，更方便日常的开发测试。

![nanoESP32-S2](https://github.com/wuxx/nanoesp32-s2/blob/master/doc/nanoESP32-S2.jpg)
# 模组规格 
nanoESP32-S2支持乐鑫官方推出的四种模组，模组之间的差异说明如下

模组|PCB天线 | IPEX天线|PSRAM|
----|----|----|-----|
ESP32-S2-WROOM | Yes | No |No|
ESP32-S2-WROOM-I | No  | Yes|No|
ESP32-S2-WROVER | Yes   | No|Yes|
ESP32-S2-WROVER-I | No  | Yes | Yes|

# ESP32-S2 vs ESP32
ESP32-S2芯片和ESP32相比，差异说明如下
模组|ESP32 | ESP32-S2|
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


# demo说明
预置的出厂测试固件源码位于demo目录下，上电之后预期RGB LED应该会开始闪烁，两个TYPE-C接口一个为CH340 USB，用于调试下载，另一个为ESP32-S2的USB，若插入ESP32-S2 USB，预期会出现一个名为"ESP32-S2 MSC"的的U盘以及一个CDC串口设备。
固件编译
```
$cd /path/to/esp-idf && . ./export.sh && cd -
$cd demo
$idf.py -p /dev/ttyUSB0 flash monitor
```
# 产品链接
[nanoESP32-S2 Board](https://item.taobao.com/item.htm?id=620291976381)

# 参考
### esp-idf
https://github.com/espressif/esp-idf
### esp32-s2
https://www.espressif.com/zh-hans/products/socs/esp32-s2
