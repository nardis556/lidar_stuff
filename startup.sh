#!bin/bash

function start() {
    bash -c 'source /opt/ros/noetic/setup.bash'
    bash -c 'source /home/$USER/catkin_ws/devel/setup.bash'
}

start()

source ~/.bashrc
