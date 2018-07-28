#!/bin/bash
directories="~/.ncmpcpp ~/Lyrics ~/Music"
for directory in $directories; do
  if [ ! -d "$(eval echo $directory)" ];then
    eval mkdir "$directory"
  fi
done

cp ncmpcpp.conf ~/.ncmpcpp/config
