#!/bin/bash

apt-get install fonts-font-awesome
apt-get install compton
apt-get install feh
apt-get install scrot
apt-get install thunar
apt-get install lxappearance
apt-get install arc-theme
apt-get install autoconf
apt-get install ffmpeg

cp wallpaper/* ~/Bilder/

mkdir ~/tmp

cd ~/tmp
git clone https://github.com/horst3180/arc-icon-theme --depth=1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# select icons + arc-darker theme using lxappearance
