#!/bin/bash

BAUDRATE=115200
#BAUDRATE=460800
#BAUDRATE=1000000

esptool.py -b ${BAUDRATE} -p /dev/ttyUSB0 write_flash 0x0 flash_image_cdc_msc.bin
