#!/usr/bin/env bash

cd
cd librealsense

sudo cp config/99-realsense-libusb.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && udevadm trigger

sudo ./scripts/patch-uvcvideo-16.04.simple.sh
clear
sudo modprobe uvcvideo

sudo dmesg | tail -n 50
echo 
echo 
echo The log should indicate that a new uvcvideo driver has been registered. 
echo 
echo If any errors have been noted, first attempt the patching process again, and then file an issue if not successful on the second attempt (and make sure to copy the specific error in dmesg).
echo 
