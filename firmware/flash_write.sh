#!/bin/bash

esptool.py -b 460800 -p /dev/ttyUSB0 write_flash 0x0 flash_image.bin
