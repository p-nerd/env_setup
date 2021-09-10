#! /bin/bash

echo "$ sudo mkdir /usr/lib/jvm/INTERMEDIATE-JDK"
sudo mkdir -v /usr/lib/jvm/INTERMEDIATE-JDK
echo
echo "$ sudo tar -xvf $1 -C /usr/lib/jvm/INTERMEDIATE-JDK"
sudo tar -xvf $1 -C /usr/lib/jvm/INTERMEDIATE-JDK
echo
echo "$ sudo mv /usr/lib/jvm/INTERMEDIATE-JDK/* /usr/lib/jvm/$2"
sudo mv -v /usr/lib/jvm/INTERMEDIATE-JDK/* /usr/lib/jvm/$2
echo
echo "$ sudo rm -vrf /usr/lib/jvm/INTERMEDIATE-JDK"
sudo rm -vrf /usr/lib/jvm/INTERMEDIATE-JDK
