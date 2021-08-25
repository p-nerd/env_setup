# Pacman Package Manager quick help

### Quick Commands -

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

### More Command -

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
``` -->

<!-- 