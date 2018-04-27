#!/bin/bash

if [[ $EUID -ne 0 ]]; then 
    echo "Please run as root"
    exit 1
fi

apt-get install - y i3 i3-wm i3blocks i3lock i3status suckless-tools gnome-flashback gnome-flashback-common

cp -f usr/bin/gnome3-launcher /usr/bin/
cp -f usr/bin/i3-launcher /usr/bin/
cp -f usr/share/applications/i3-launcher.desktop /usr/share/applications/
cp -f usr/share/gnome-session/sessions/gnome3-plus-i3.session /usr/share/gnome-session/sessions/
cp -f usr/share/xsessions/gnome3-plus-i3.desktop /usr/share/xsessions/
