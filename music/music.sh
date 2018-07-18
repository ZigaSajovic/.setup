#!bin/bash
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
sudo systemctl enable mpd.service
cp music.config ~/.mpd/mpd.conf
mpd > /dev/null 2>&1
killall mpd
mpd
