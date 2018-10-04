#!/usr/bin/env bash
clear
chmod +x scripts/*
sudo cp -f cleanup /usr/sbin/
sudo ./scripts/openssh.sh
sudo ./scripts/tmux.sh
sudo ./scripts/hamachi.sh
sudo ./scripts/repair_maker.sh
sudo ./scripts/ros_full.sh
sudo ./scripts/libreal_pre.sh
sudo ./scripts/libreal_make.sh 
clear
echo 
echo 
echo 
echo 
echo REMOVE ZR300 THEH PRESS KEY
echo 
echo 
echo 
read temp
sudo ./scripts/libreal_uvcvideo.sh
sudo ./scripts/libreal_ros.sh
sudo ./scripts/rtabmap.sh