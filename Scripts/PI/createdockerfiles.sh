#!/bin/bash

#Creating docker file directory
echo "\e[32mCreating docker file directory\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/
mkdir -p /home/pi/dockerfiles

#Creating Vericoin Docker File
echo "\e[32mCreating vericoin docker file\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
cd /home/pi/dockerfiles/
mkdir -p VericoinDockerFile
cp -n /home/pi/git/PI_Vericoin/DockerFiles/VericoinDockerFile /home/pi/dockerfiles/VericoinDockerFile/
sudo docker build -t ubuntu1804 ./VericoinDockerFile/
