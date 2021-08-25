# Linux Tips and Tricks
## Linux Trick
### Open dolphin app as root user
```zsh
sudo pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dolphin
```

### Open a particular file from a terminal
```zsh
xdg-open <filename.extension>
```

---

## Problem Fix
### snap programs not showing up in Launcher

Copy applications shortcut from `/var/lib/snapd/desktop/applications/` to `/usr/share/applications/`

Example: `sudo cp /var/lib/snapd/desktop/applications/brave_brave.desktop /usr/share/applications/`

This tested in `Kde neon`


### ArchLinux kde plasma global manu issues fix

Run this command:
```zsh
sudo pacman -S appmenu-gtk-module libdbusmenu-glib
```
Then reboot the system
