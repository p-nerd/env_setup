#! /bin/zsh

sudo cp -v smt-arch.sh /usr/bin/smt
sudo chmod +x -v /usr/bin/smt
if [[ ! -d $HOME/.smt ]]
then
    mkdir -v $HOME/.smt
fi
