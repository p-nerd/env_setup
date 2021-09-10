#!/bin/bash

# sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/$1/bin/javac 1
# sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/$1/bin/java 1

if [[ -f /usr/bin/java ]] 
then
    echo "$ sudo rm -v /usr/bin/java"
    sudo rm -v /usr/bin/java
    echo
fi
if [[ -f /usr/bin/javac ]]
then
    echo "$ sudo rm -v /usr/bin/javac"
    sudo rm -v /usr/bin/javac
    echo
fi
echo "$ sudo ln -vs /usr/lib/jvm/$1/bin/java /usr/bin/java"
sudo ln -vs /usr/lib/jvm/$1/bin/java /usr/bin/java
echo
echo "$ sudo ln -vs /usr/lib/jvm/$1/bin/javac /usr/bin/javac"
sudo ln -vs /usr/lib/jvm/$1/bin/javac /usr/bin/javac
