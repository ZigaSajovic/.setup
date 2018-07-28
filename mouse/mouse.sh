#!bin/bash
sudo apt install xserver-xorg-input-libinput
#enable natural scrolling
#sudo cp naturalScroll.template /usr/share/X11/xorg.conf.d/20-natural-scrolling.conf
id=$(xinput list-props 13|grep -i natural|head -n1|cut -d"(" -f2|cut -d")" -f1)
xinput set-prop $id 1
#enable horizontal scroll
id=$(xinput list-props 13|grep -i hor|head -n1|cut -d"(" -f2|cut -d")" -f1)
xinput set-prop $id 1
#disable middle button
xinput set-button-map 13 1 0 3
