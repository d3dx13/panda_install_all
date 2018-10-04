#!/usr/bin/env bash
clear
echo openssh
sudo ./scripts/openssh.sh
clear
echo tmux
./scripts/tmux.sh
clear
echo hamachi
sudo ./scripts/hamachi.sh
clear
echo ros_full
sudo ./scripts/ros_full.sh

