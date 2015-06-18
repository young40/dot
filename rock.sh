#!/bin/sh

ln -s ~/dot/.gitconfig ~/.gitconfig
ln -s ~/dot/.spacemacs ~/.spacemacs
ln -s ~/dot/.vimrc     ~/.vimrc
ln -s ~/dot/.vim       ~/.vim

git submodule update --init --recursive

vim +PluginInstall +qall
