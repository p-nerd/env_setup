#!/bin/zsh

echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing .vimre file..."
curl -fLo ~/.vimrc https://raw.githubusercontent.com/shihab4t/EnvSetup/main/.dotfiles/.vimrc

echo "Installing all required plugin"
vim -c PlugInstall -c q -c q
echo "Moving colorschemes ~/.vim directory..."
mv ~/.vim/plugged/vim-colorschemes/colors/ ~/.vim/

echo "Add colorscheme into .vimrc file"
echo "colorscheme Monokai" >> ~/.vimrc
