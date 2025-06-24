#!/bin/bash
set -x
set -u

sudo apt update && \
sudo apt install fzf tmux 

ln -f -s `pwd`/bashrc ~/.bashrc
ln -f -s `pwd`/tmux.conf ~/.tmux.conf
