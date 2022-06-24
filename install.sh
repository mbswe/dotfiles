#!/bin/bash

USER=magnus
CWD=$(pwd)

#nvim
rm -f /home/$USER/.config/nvim/init.vim
ln -s $CWD/nvim/init.vim /home/$USER/.config/nvim/init.vim

#i3
rm -f /home/$USER/.i3/config
ln -s $CWD/i3/config /home/$USER/.i3/config
