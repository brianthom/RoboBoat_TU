#!/bin/bash
export ROS_MASTER_URI=http://10.19.122.101:11311/;
source ~/catkin_ws/devel/setup.bash;
roslaunch rosbridge_server rosbridge_websocket.launch
