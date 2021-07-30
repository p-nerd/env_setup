#!/bin/bash

echo "Coping cpa.sh into /usr/bin/cpa"
sudo cp cpa.sh /usr/bin/cpa
echo "Giving executable permission"
sudo chmod +x /usr/bin/cpa
if [[ ! -d $HOME/.cpa ]]
then
    echo "Creating '$HOME/.cpa' directory"
    mkdir $HOME/.cpa
fi
