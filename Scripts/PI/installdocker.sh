#!/bin/bash

#Install docker
printf "\e[32mInstall docker\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker $USER 