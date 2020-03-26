#!/bin/bash


# Add Repositories

#chrome
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

#vs code
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

#vlc
sudo add-apt-repository ppa:videolan/stable-daily

#git
sudo add-apt-repository ppa:git-core/ppa



# Install Apps
sudo apt-get update && sudo apt-get upgrade

sudo apt-get -y install \
    google-chrome-stable \
    ubuntu-tweak \
    vlc \
    code \
    git \
    cmake \

# robocomp
sudo apt-get install git git-annex cmake make g++ libgsl-dev libopenscenegraph-dev cmake-qt-gui zeroc-ice-all-dev freeglut3-dev libboost-system-dev libboost-thread-dev qt5-default libqt5xmlpatterns5-dev libqt5opengl5-dev libxt-dev libboost-test-dev libboost-filesystem-dev  libccd-dev zeroc-ice-all-runtime
sudo apt-get install python3-pip python3-setuptools python3-pyparsing=2.2.0+dfsg1-2 python3-numpy python3-libxml2 python3-xmltodict python3-zeroc-ice
sudo pip3 install networkx pyside2 argcomplete termcolor cogapp
sudo apt-get install yakuake qttools5-dev-tools qt5-assistant