#!/bin/bash

# Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
apt-get update

apt-get install spotify-client fonts-font-awesome compton feh xbacklight scrot acpi thunar lxappearance arc-theme autoconf ffmpeg

cp wallpaper/* ~/Pictures/

mkdir ~/tmp

cd ~/tmp
git clone https://github.com/horst3180/arc-icon-theme --depth=1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

curl https://github.com/haikarainen/light/archive/1.1.2.tar.gz -o ../tmp/light.tar.gz
cd ../tmp && tar xf light.tar.gz
cd light-x.yy
make
sudo make install
# select icons + arc-darker theme using lxappearance
