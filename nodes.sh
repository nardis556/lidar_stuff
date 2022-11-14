#!bin/bash

function start() {
    bash -c 'x-terminal-emulator -e roscore'
    bash -c 'sleep 5'
    bash -c 'x-terminal-emulator -e roslaunch velodyne_pointcloud 32e_points.launch'
    bash -c 'x-terminal-emulator -e roslaunch usb_cam usb_cam-test.launch'
    bash -c 'x-terminal-emulator -e rosrun velodyne_gps_imu gpsimu_driver'
}; 

start

echo 'launched'
