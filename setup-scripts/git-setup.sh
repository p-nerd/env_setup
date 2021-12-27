#!/bin/bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install git gh vim -y
git config --global user.email "shihab4t@gmail.com"
git config --global user.name "Shihab Mahamud"
git config --global core.editor "vim"
gh auth login
