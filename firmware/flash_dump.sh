#!/bin/bash

esptool.py -b 460800 -p /dev/ttyUSB0 read_flash 0x0 0x200000 flash_image.bin
