#!/bin/bash
echo "Step 00: wget https://raw.githubusercontent.com/shihab4t/cpa/main/cpa.sh"
wget https://raw.githubusercontent.com/shihab4t/cpa/main/cpa.sh
echo
echo "Step 01: sudo mv cpa.sh /usr/bin/cpa"
sudo mv cpa.sh /usr/bin/cpa
echo
echo "Step 02: sudo chmod +x /usr/bin/cpa"
sudo chmod +x /usr/bin/cpa
echo
echo "Step 03: mkdir ~/.cpa"
mkdir ~/.cpa
