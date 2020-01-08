#!/bin/bash

#Creating docker file directory
echo "\e[32mCreating docker file directory\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/
mkdir -p ~/dockerfiles

echo "Test5"

#Creating Vericoin Docker File
printf "\e[32mCreating vericoin docker file\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"
cd ~/dockerfiles/

echo "Test6"

mkdir -p VericoinDockerFile

echo "Test7"

cp -n ~/git/PI_Vericoin/DockerFiles/VericoinDockerFile ~/dockerfiles/VericoinDockerFile/dockerfile


echo "Test8"

sudo docker build -t ubuntu1804 ./VericoinDockerFile/

echo "Test9"