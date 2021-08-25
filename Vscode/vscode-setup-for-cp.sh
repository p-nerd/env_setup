#!/bin/bash
echo "Step 00: sudo apt update"
sudo apt update
echo
echo "Step 01: sudo apt install python3 python3-pip gcc g++"
sudo apt install python3 python3-pip gcc g++
echo
echo "Step 02: code --install-extension GitHub.github-vscode-theme"
code --install-extension GitHub.github-vscode-theme
echo
echo "Step 03: code --install-extension rafapaulin.try-material-icon-theme"
code --install-extension rafapaulin.try-material-icon-theme
echo
echo "Step 04: code --install-extension formulahendry.code-runner"
code --install-extension formulahendry.code-runner
echo
echo "Step 05: code --install-extension DivyanshuAgrawal.competitive-programming-helper"
code --install-extension DivyanshuAgrawal.competitive-programming-helper
echo
echo "Step 06: code --install-extension ms-vscode.cpptools"
code --install-extension ms-vscode.cpptools
echo
echo "Step 07: code --install-extension vscodevim.vim"
code --install-extension vscodevim.vim
