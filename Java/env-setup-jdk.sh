#!/bin/bash

sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-$1/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-$1/bin/java 1
