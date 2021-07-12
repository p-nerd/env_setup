#!/bin/bash
echo "Step 01: sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
echo
echo "Step 02: sudo apt-add-repository https://cli.github.com/packages"
sudo apt-add-repository https://cli.github.com/packages
echo 
echo "Step 03: sudo apt update"
sudo apt update
echo
echo "Step 04: sudo apt install git gh vim"
sudo apt install git gh vim
echo
echo "Step 05: git config --global user.email \"shihab4t@gmail.com\""
git config --global user.email "shihab4t@gmail.com"
echo
echo "Step 06: git config --global user.name \"Shihab Mahamud\""
git config --global user.name "Shihab Mahamud"
echo
echo "Step 07: git config --global core.editor \"vim\""
git config --global core.editor "vim"
echo 
echo "Step 08: gh auth login"
gh auth login
