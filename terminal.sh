#!/bin/bash

#instal vim with features
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev   libgtk2.0-dev libatk1.0-dev libbonoboui2-dev   libcairo2-dev libx11-dev libxpm-dev libxt-dev
sudo apt remove vim vim-runtime gvim
cd ~
git clone https://github.com/vim/vim.git
cd ~/vim
./configure --with-features=huge --enable-gui=gnome2 ----enable-pythoninterp=yes
make -j8
sudo make install
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
cd ~
#vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

#tmux
sudo apt-get -y remove tmux
sudo apt-get -y install wget tar libevent-dev libncurses-dev
VERSION=2.6
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
sudo make install
cd -
sudo rm -rf /usr/local/src/tmux-\*
sudo mv tmux-${VERSION} /usr/local/src
sudo killall -9 tmux
cd 

#base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
#oceanic-next
wget https://raw.githubusercontent.com/denysdovhan/oceanic-next-gnome-terminal/master/oceanic-next.bash && chmod +x oceanic-next.bash && ./oceanic-next.bash
