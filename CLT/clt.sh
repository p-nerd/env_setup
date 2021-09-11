#! /bin/bash

if [[ $1 == --help ]]
then
echo """
    Commend     Sub-Commend     Argument
    java        extract-jdk     \"downloaded jdk name\" \"wanted jdk name\"
                env-setup       \"jdk name\"
                show
                remove-jdk
"""
elif [[ $1 == java ]]
then
    if [[ $2 == show ]]
    then
        echo "$ ls -la /usr/lib/jvm"
        ls -la /usr/lib/jvm
        echo
        echo "$ java --version"
        java --version
        echo
        echo "$ javac --version"
        javac --version
    elif [[ $2 == extract-jdk ]]
    then
        echo "$ sudo mkdir /usr/lib/jvm/INTERMEDIATE-JDK"
        sudo mkdir -v /usr/lib/jvm/INTERMEDIATE-JDK
        echo
        echo "$ sudo tar -xvf $3 -C /usr/lib/jvm/INTERMEDIATE-JDK"
        sudo tar -xvf $3 -C /usr/lib/jvm/INTERMEDIATE-JDK
        echo
        echo "$ sudo mv /usr/lib/jvm/INTERMEDIATE-JDK/* /usr/lib/jvm/$4"
        sudo mv -v /usr/lib/jvm/INTERMEDIATE-JDK/* /usr/lib/jvm/$4
        echo
        echo "$ sudo rm -vrf /usr/lib/jvm/INTERMEDIATE-JDK"
        sudo rm -vrf /usr/lib/jvm/INTERMEDIATE-JDK
    elif [[ $2 == env-setup ]]
    then
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
        echo "$ sudo ln -vs /usr/lib/jvm/$3/bin/java /usr/bin/java"
        sudo ln -vs /usr/lib/jvm/$1/bin/java /usr/bin/java
        echo
        echo "$ sudo ln -vs /usr/lib/jvm/$3/bin/javac /usr/bin/javac"
        sudo ln -vs /usr/lib/jvm/$1/bin/javac /usr/bin/javac
    elif [[ $2 == remove-jdk ]]
    then
        echo "$ sudo rm -vrf /usr/lib/jvm/$1"
        sudo rm -vrf /usr/lib/jvm/$1
    fi

fi
