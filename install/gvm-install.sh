curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer > script.deb
chmod +x script.deb
zsh script.deb
sudo apt install bison -y
source /home/shihab4t/.gvm/scripts/gvm
gvm install go1.18.3 -B
gvm use go1.18.3 --default
