#!/bin/bash

#Creating docker file directory
echo "\e[32mCreating docker file directory\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/
mkdir -p dockerfiles
cd dockerfiles/

#Creating Vericoin Docker File
echo "\e[32mCreating vericoin docker file\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/dockerfiles/
mkdir -p VericoinDockerFile
cp -n ~/git/PI_Vericoin/Data/VericoinDockerFile ~/dockerfiles/VericoinDockerFile/
sudo docker build -t ubuntu1804 ./VericoinDockerFile/
