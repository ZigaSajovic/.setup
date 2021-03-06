#!/bin/bash

#get dependencies
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool 
#i3gaps
cd
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

#i3blocks-gap
cd
git clone https://github.com/Airblader/i3blocks-gaps i3blocks
cd i3blocks
make clean debug # or make clean all
make install

#other
sudo apt-get install arandr
sudo apt-get install feh
sudo apt-get install lxappearance
sudo apt-get install compton
sudo add-apt-repository ppa:jasonpleau/rofi
sudo apt update
sudo apt install rofi

