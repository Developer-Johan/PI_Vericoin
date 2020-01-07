#!/bin/bash

#Install docker
echo "\e[32mInstall docker\e[0m"
echo "\e[33mCurrent path is: '`pwd`'\e[0m"
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker $USER 