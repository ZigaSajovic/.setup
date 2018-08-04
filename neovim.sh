#!/bin/bash
cd ~
git clone https://github.com/neovim/neovim.git
cd neovim
rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install

#add to path if not already
toAppend='export PATH="$HOME/neovim/bin:$PATH"'
if [ -z "$(cat ~/.zshrc |grep $toAppend)" ]; then
  echo $toAppend >> ~/.zshrc
  . ~/.zshrc
fi
echo 

#install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip install neovim

mkdir -p ~/.nvim/undo
