#!/usr/bin/env bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full -y
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
echo "source /home/panda/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc
echo "source /home/panda/catkin_ws/devel/setup.zsh" >> ~/.zshrc
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential -y
cd
mkdir -p catkin_ws/src
cd catkin_ws/src
catkin_init_workspace
cd ..
catkin_make
cd
