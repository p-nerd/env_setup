#! /bin/bash

echo "Java Version"
javac --version
jshell --version
java --version

echo
if [[ -f /usr/bin/java ]] 
then
    sudo rm -vrf /usr/bin/java
fi
if [[ -f /usr/bin/javac ]]
then
    sudo rm -vrf /usr/bin/javac
fi
if [[ -f /usr/bin/jshell ]]
then 
    sudo rm -vrf /usr/bin/jshell
fi

sudo ln -vs /usr/lib/jvm/$1/bin/java /usr/bin/java
sudo ln -vs /usr/lib/jvm/$1/bin/javac /usr/bin/javac
sudo ln -vs /usr/lib/jvm/$1/bin/jshell /usr/bin/jshell
