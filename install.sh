#!/bin/bash

# Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
apt-get update

apt-get install spotify-client fonts-font-awesome compton feh xbacklight scrot acpi thunar lxappearance arc-theme autoconf ffmpeg

cp wallpaper/* ~/Bilder/

mkdir ~/tmp

cd ~/tmp
git clone https://github.com/horst3180/arc-icon-theme --depth=1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
# select icons + arc-darker theme using lxappearance
