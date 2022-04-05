sudo cp -v cpro.sh /usr/bin/cpro
sudo chmod +x -v /usr/bin/cpro
if [[ ! -d $HOME/.cpro ]]
then
    mkdir -v $HOME/.cpro
fi
