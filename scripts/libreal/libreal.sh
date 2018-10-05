#!/usr/bin/env bash

sudo ./libreal_pre.sh
sudo ./libreal_make.sh
sudo apt-get install -y build-essential libgtk-3-dev
sudo ./libreal_uvcvideo.sh
sudo ./libreal_ros.sh
