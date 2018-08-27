#!/bin/bash

sudo apt-get install autopep8
sudo apt-get install ranger
#mupdf
sudo add-apt-repository ppa:ubuntuhandbook1/apps
sudo apt-get update
sudo apt-get install mupdf mupdf-tools 
#mpv
sudo add-apt-repository ppa:mc3man/mpv-tests
sudo apt update && sudo apt install mpv
#youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl\
sudo chmod a+rx /usr/local/bin/youtube-dl
#qutebrowser
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
tox -e mkvenv-pypi
sudo /bin/bash -c  "echo -e '#\!/bin/bash\n~/qutebrowser/.venv/bin/python3 -m qutebrowser \"\$@\"' > /usr/bin/qutebrowser"
sudo chown root:root /usr/bin/qutebrowser
sudo chmod 755 /usr/bin/qutebrowser
