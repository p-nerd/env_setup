# Env-Setup
Computer Environment Setup for Programming

## Utilities tool list
* [`termdown`](https://github.com/trehn/termdown) | `$ pip install termdown`
* [`yakuake`](https://apps.kde.org/en/yakuake) | `$ sudo apt install yakuake`
* [`kazam`](https://launchpad.net/kazam) | `$ sudo apt install kazam`
* [`speedtest-cli`](https://github.com/sivel/speedtest-cli) | `$ sudo apt install speedtest-cli`
* [`tmux`](https://github.com/tmux/tmux/wiki) | `$ sudo apt install tmux`
* [`htop`](https://htop.dev) | `$ sudo apt install htop`
* [`ncdu`](https://dev.yorhel.nl/ncdu) | `$ sudo apt install ncdu`

<!--
# Linux Computer Setup

## One click [Vim setup](https://github.com/shihab4t/setup/tree/main/vim_setup)

```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& curl -fLo ~/.vimrc https://raw.githubusercontent.com/shihabmahamud/setup/main/vim_setup/.vimrc \
&& vim -c PlugInstall -c q -c q \
&& mv ~/.vim/plugged/vim-colorschemes/colors/ ~/.vim/ \
&& echo "colorscheme Monokai" >> ~/.vimrc
```

---

## 3 click [Zsh setup](https://github.com/shihab4t/setup/tree/main/zsh_shell_setup)

```zsh
chsh -s $(which zsh)
```

Install [Fira Mono Font](https://github.com/shihab4t/setup/raw/main/zsh_shell_setup/fira-mono-regular-nerd-font.otf)

### After relogin in computer

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
&& git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k \
&& git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting \
&& curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.zshrc \
&& curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.p10k.zsh
```

## Vim setup

---

## 1. Install vim-plug
```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 2. Download my coustom .vimrc file into ~/ directory
```zsh
curl -fLo ~/.vimrc https://raw.githubusercontent.com/shihabmahamud/setup/main/vim_setup/.vimrc
```

## 3. Install all required plugin
```zsh
vim -c PlugInstall -c q -c q
```

## 4. Move colorschemes ~/.vim directory
```zsh
mv ~/.vim/plugged/vim-colorschemes/colors/ ~/.vim/
```

## 5. Add colorscheme
```zsh
echo "colorscheme Monokai" >> ~/.vimrc
```

---

## One click Vim setup
```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& curl -fLo ~/.vimrc https://raw.githubusercontent.com/shihabmahamud/setup/main/vim_setup/.vimrc \
&& vim -c PlugInstall -c q -c q \
&& mv ~/.vim/plugged/vim-colorschemes/colors/ ~/.vim/ \
&& echo "colorscheme Monokai" >> ~/.vimrc
```

---


## Zsh Shell Setup

[All detials](https://medium.com/@shivam1/make-your-terminal-beautiful-and-fast-with-zsh-shell-and-powerlevel10k-6484461c6efb)

## 1. Set zsh as default shell
```zsh
chsh -s $(which zsh)
```
After relogin in computer

### 2. Install oh my zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

### 3. Install [Fira Mono Font](https://github.com/shihab4t/setup/raw/main/zsh_shell_setup/fira-mono-regular-nerd-font.otf)
<!-- (https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fira%20Mono%20Regular%20Nerd%20Font%20Complete.otf?raw=true)

### 4. Install Syntax Highlighting and Autosuggestions plugins
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

### 5. Download .zshrc file into ~/ directory
```zsh
curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.zshrc
```

### 6. Download .p10k.zsh into ~/ directory
```zsh
curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.p10k.zsh
```

---

### In 3 Click Zsh setup
```zsh
chsh -s $(which zsh)
```
Install [Fira Mono Font](https://github.com/shihab4t/setup/raw/main/zsh_shell_setup/fira-mono-regular-nerd-font.otf)

After relogin in computer**

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
&& git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k \
&& git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting \
&& curl -fLo ~/.zshrc https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.zshrc \
&& curl -fLo ~/.p10k.zsh https://raw.githubusercontent.com/shihabmahamud/setup/main/zsh_shell_setup/.p10k.zsh
```

### For configeration
```zsh
    p10k configure
```

---
 -->
