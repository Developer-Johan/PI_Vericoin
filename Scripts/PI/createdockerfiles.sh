#!/bin/bash

#Creating docker file directory
printf "\e[32mCreating docker file directory\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/
mkdir -p ~/dockerfiles

#Creating Vericoin Docker File
printf "\e[32mCreating vericoin docker file\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/dockerfiles/
mkdir -p VericoinDockerFile
cp -n ~/git/PI_Vericoin/DockerFiles/Vericoin/dockerfile ~/dockerfiles/VericoinDockerFile/

sudo docker build -t vericoin ./VericoinDockerFile/
