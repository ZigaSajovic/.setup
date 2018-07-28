#!/bin/bash
directories="~/Music ~/Playlists ~/.mpd"

for directory in $directories; do
  if [ ! -d "$(eval echo $directory)" ];then
    eval mkdir "$directory"
  fi
done

#Install mpd
sudo apt-get install mpd
sudo apt-get install mpc
sudo apt-get install ncmpcpp
#Setup mpd

sudo /etc/init.d/mpd stop
sudo update-rc.d mpd disable
cp music.config ~/.mpd/mpd.conf
cp "Music Player Daemon.desktop" /home/ziga/.config/autostart/"Music Player Daemon.desktop"
cp ncmpcpp.sh ~/.ncmpcpp/config
mpd
