#!/usr/bin/env bash
clear
chmod +x scripts/backdoor/*
chmod +x scripts/ros/*
chmod +x scripts/libreal/*
chmod +x scripts/*
sudo cp -f cleanup /usr/sbin/
sudo ./scripts/backdoor/backdoor.sh
sudo ./scripts/ros/ros_full.sh
sudo ./scripts/libreal/libreal.sh
sudo ./scripts/ros/rtabmap.sh
