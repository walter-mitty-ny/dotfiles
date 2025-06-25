#!/bin/bash
set -x
set -u

sudo apt update && \
sudo apt install fzf tmux 

ln -f -s `pwd`/bashrc $HOME/.bashrc
ln -f -s `pwd`/gitconfig $HOME/.gitconfig
ln -f -s `pwd`/tmux.conf $HOME/.tmux.conf
ln -f -s `pwd`/vim $HOME/.vim
ln -f -s `pwd`/vimrc $HOME/.vimrc
