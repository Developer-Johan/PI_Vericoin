#!/bin/bash

#Creating docker file directory
printf "\e[32mCreating docker file directory\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"
cd ~/
mkdir -p ~/dockerfiles

#Creating vericoin Docker File
printf "\e[32mCreating vericoin docker file\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"
cd ~/dockerfiles/
mkdir -p vericoindockerfile
cp -n ~/git/pi_vericoin/dockerfiles/vericoin/dockerfile ~/dockerfiles/vericoindockerfile/

sudo docker build -t vericoin ./vericoindockerfile/
