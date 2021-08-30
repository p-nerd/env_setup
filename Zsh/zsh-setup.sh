#!/bin/bash
echo
echo "Step 00: sudo apt update"
sudo apt update
echo
echo "Step 01: sudo apt install zsh git curl wget"
sudo apt install zsh git curl wget

# echo "Installing Fira Mono Font..."
# if [[ ! -d /usr/local/share/fonts ]]
# then
#     sudo mkdir /usr/local/share/fonts
# fi
# sudo mkdir /usr/local/share/fonts/f
# wget https://github.com/shihab4t/computer-setup/raw/main/fira-mono-regular-nerd-font.otf
# sudo cp fira-mono-regular-nerd-font.otf /usr/local/share/fonts/f/

echo
echo "Step 02: sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo
echo "Step 03: git clone https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k"
git clone https://github.com/romkatv/powerlevel10k.git /home/$USER/.oh-my-zsh/custom/themes/powerlevel10k
echo
echo "Step 04: git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo
echo "Step 05: git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo
echo "Step 06: curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihab4t/EnvSetup/main/Zsh/.zshrc"
curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihab4t/EnvSetup/main/Zsh/.zshrc
echo
echo "Step 07: curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihab4t/EnvSetup/main/Zsh/.p10k.zsh"
curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihab4t/EnvSetup/main/Zsh/.p10k.zsh
echo
echo "Step 08: chsh -s /bin/zsh"
chsh -s /bin/zsh
