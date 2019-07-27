#!/bin/bash -xve
 
sudo apt-get install python-catkin-pkg

#ros install
cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu14.04_server.git
cd ./ros_setup_scripts_Ubuntu14.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
export PYTHONPATH="/opt/ros/indigo/lib/python2.7/dist-packages:$PYTHONPATH"
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
