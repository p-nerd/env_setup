#! /bin/bash

if [[ ! -d $HOME/.bin ]]
then
    mkdir -v $HOME/.bin
fi

cp -v smt-win.sh ~/.bin/smt.sh
if [[ ! -d $HOME/.smt ]]
then
    mkdir -v $HOME/.smt
fi
