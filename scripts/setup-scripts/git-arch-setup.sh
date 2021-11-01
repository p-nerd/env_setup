#!/bin/bash

sudo pacman -S git github-cli vim
git config --global user.email "shihab4t@gmail.com"
git config --global user.name "Shihab Mahamud"
git config --global core.editor "vim"
gh auth login
