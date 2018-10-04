#!/usr/bin/env bash

cd
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install libusb-1.0-0-dev pkg-config -y
sudo apt-get install libglfw3-dev -y
sudo apt-get install qtcreator -y
sudo scripts/install_qt.sh
