#! /bin/bash

sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install touchegg

git clone https://github.com/NayamAmarshe/ToucheggKDE.git
cd Touchegg*
mkdir ~/.config/touchegg
cp touch* ~/.config/touchegg/
rm -rf Touchegg
