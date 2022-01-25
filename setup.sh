#!/bin/bash

sudo apt update
sudo apt install i3-gaps dolphin terminator rofi feh flameshot compton python3-psutil -y
sudo unzip $PWD/src/fonts.zip
sudo mv $PWD/*.ttf /usr/share/fonts/truetype/hack
sudo mkdir ~/.config/i3
sudo mkdir ~/.config/i3status
sudo mkdir ~/.config/compton
sudo mkdir ~/.config/rofi
sudo mkdir ~/.config/wallpaper
sudo cp $PWD/src/i3/* ~/.config/i3
sudo cp $PWD/src/i3status/* ~/.config/i3status
sudo cp $PWD/src/compton/* ~/.config/compton
sudo cp $PWD/src/rofi/* ~/.config/rofi
sudo cp $PWD/src/wallpaper/* ~/.config/wallpaper

sudo apt autoremove -y
sudo reboot
