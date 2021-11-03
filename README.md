# EnvSetup
Computer Environment Setup for Programming

## Env for Competitive Programming
* Ubuntu based OS: Kde Neon
* [`yakuake`](https://apps.kde.org/en/yakuake) | `$ sudo apt install yakuake`
* `termdown` | `$ pip3 install termdown`
* C/C++ Compiler: `GNU GCC`
* Text Editor: `Visual Studio Code`, `Vim`
* Visual Studio Code Extension: [`C/C++`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools), [`Competitive Programming Helper (cph)`](https://marketplace.visualstudio.com/items?itemName=DivyanshuAgrawal.competitive-programming-helper), [`GitHub Theme`](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme), [`Try's Icon Pack`](https://marketplace.visualstudio.com/items?itemName=rafapaulin.try-material-icon-theme), [`Code Runner`](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)
* Browser: Google Chrome, Brave Browser
* Browser Extension: [`Competitive Companion by jmerle`](https://github.com/jmerle/competitive-companion)

## Linux Tips and Tricks
* Open dolphin app as root user
    ```zsh
    sudo pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dolphin
    ```

* Open a particular file from a terminal
    ```zsh
    xdg-open <filename.extension>
    ```

* snap programs not showing up in Launcher
    ```zsh
    sudo cp /var/lib/snapd/desktop/applications/brave_brave.desktop /usr/share/applications/`
    ```
    Copy applications shortcut from `/var/lib/snapd/desktop/applications/` to `/usr/share/applications/`

    This tested in `Kde neon`

* ArchLinux kde plasma global manu issues fix
    ```zsh
    sudo pacman -S appmenu-gtk-module libdbusmenu-glib
    ```
    Then reboot the system


## Pacman Package Manager quick help
* Quick Commands -
    ```zsh
    pacman -Syu                 # Update and Upgrade system
    pacman -Ss <pachage>        # Seach pachage in the remote repo
    pacman -S <pachage>         # Isntall or Upgrade pachage
    pacman -Qs <pachage>        # Search pachage in the system
    pacman -Q                   # See all the installed pachage in the sysytem
    pacman -Qe                  # list all the pachage the user install
    pacman -Rns                 # Removeing pachage
    pacman -Qdt                 # lsit all the unneed  rependencis
    pacman -Sc                  # remove older version pachage
    ```
* More Command -
    ```zsh
    pacman -S <packageName>     # install pachage
    pacman -Sy                  # debian apt update
    pacman -Su                  # debain apt upgrade
    pacman -Syu                 # update and upgrade pachage
    pacman -Ss <packageName>    # search pachage
    pacman -Sc                  # remove older version pachage
    ```
    ```zsh
    pacman -R <packageName>     # remove pachage
    pacman -Rs <packageName>    # remove pachage with dependencies
    pacman -Rns <packageName>   # remove pakage with dependencies and system configfile
    ```

    ```zsh
    pacman -Q                   # list all the pachage in the system
    pacman -Q | wc -l           # show how many pachage in the system 
    pacman -Qe                  # list all the pachage the user install
    pacman -Qe : wc -h          # ...
    pacman -Qeq                 # list all the pachage this core name
    pacman -Qn                  # list all the pakage they are installed from the main repository
    pacman -Qm                  # list all the pachage they are installed from the AUR 
    pacman -Qdt                 # lsit all the unneed  rependencis 
    df -g                       # list file system
    ```
