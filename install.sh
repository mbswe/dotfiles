#!/bin/bash

USER=magnus
CWD=$(pwd)

#nvim
rm -f /home/$USER/.config/nvim/init.vim
ln -s $CWD/nvim/init.vim /home/$USER/.config/nvim/init.vim

#i3
rm -f /home/$USER/.i3/config
ln -s $CWD/i3/config /home/$USER/.i3/config

#i3status
mkdir -p /home/$USER/.config/i3status
rm -f /home/$USER/.config/i3status/i3status.conf
ln -s $CWD/i3status/i3status.conf /home/$USER/.config/i3status/config

#alacritty
mkdir -p /home/$USER/.config/alacritty
rm -f /home/$USER/.config/alacritty/alacritty.yml
ln -s $CWD/alacritty/alacritty.yml /home/$USER/.config/alacritty/alacritty.yml
