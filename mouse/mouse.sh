#!bin/bash
sudo apt install xserver-xorg-input-libinput
#enable natural scrolling
#sudo cp naturalScroll.template /usr/share/X11/xorg.conf.d/20-natural-scrolling.conf

#id of the touchpad
id=13
prop_id=$(xinput list-props $id|grep -i natural|head -n1|cut -d"(" -f2|cut -d")" -f1)
xinput set-prop $id $prop_id 1
#enable horizontal scroll
prop_id=$(xinput list-props $id|grep -i hor|head -n1|cut -d"(" -f2|cut -d")" -f1)
xinput set-prop $id $prop_id 1
#enable tap to click
prop_id=$(xinput list-props $id|grep -i tapping|head -n1|cut -d"(" -f2|cut -d")" -f1)
xinput set-prop $id $prop_id 1
#disable middle button
xinput set-button-map $id 1 0 3
