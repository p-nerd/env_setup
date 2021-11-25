#!/bin/zsh

sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install touchegg -y

git clone https://github.com/NayamAmarshe/ToucheggKDE.git
cd Touchegg*
mkdir ~/.config/touchegg
cp touch* ~/.config/touchegg/
cd ..
rm -rf Touchegg
