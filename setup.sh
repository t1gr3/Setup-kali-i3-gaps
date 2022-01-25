#!/bin/bash

sudo apt update
sudo apt install i3-gaps dolphin terminator rofi feh flameshot compton python3-psutil -y
unzip $PWD/src/fonts.zip
sudo mv $PWD/*.ttf /usr/share/fonts/truetype/hack
mkdir ~/.config/i3
mkdir ~/.config/i3status
mkdir ~/.config/compton
mkdir ~/.config/rofi
mkdir ~/.config/wallpaper
cp $PWD/src/i3/* ~/.config/i3
cp $PWD/src/i3status/* ~/.config/i3status
cp $PWD/src/compton/* ~/.config/compton
cp $PWD/src/rofi/* ~/.config/rofi
cp $PWD/src/wallpaper/* ~/.config/wallpaper
sudo chmod +x ~/.config/i3status/*

sudo apt autoremove -y
sudo reboot
