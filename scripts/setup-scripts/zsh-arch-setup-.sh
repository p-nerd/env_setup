#!/bin/bash

sudo pacman -Syu
sudo pacman -S zsh git curl wget

# Installing Fira Mono Font
# if [[ ! -d /usr/local/share/fonts ]]
# then
#     sudo mkdir /usr/local/share/fonts
# fi
# sudo mkdir /usr/local/share/fonts/f
# wget https://github.com/shihab4t/computer-setup/raw/main/fira-mono-regular-nerd-font.otf
# sudo cp fira-mono-regular-nerd-font.otf /usr/local/share/fonts/f/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihab4t/EnvSetup/main/.dotfiles/.zshrc
curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihab4t/EnvSetup/main/.dotfiles/.p10k.zsh
chsh -s /bin/zsh
