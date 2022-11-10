#!bin/bash

sudo add-apt-repository 'deb http://security.ubuntu.com/ubuntu xenial-security main'
sudo apt update
sudo apt install libjasper1 libjasper-dev

sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
