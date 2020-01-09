#!/bin/bash

#Update and upgrade
printf "\e[32mStarting update + upgrade\e[0m"
printf "\e[33mCurrent path is: '`pwd`'\e[0m"
sudo apt -y update
sudo apt -y upgrade