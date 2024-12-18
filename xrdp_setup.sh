#!/bin/bash

sudo apt update
sudo apt install xrdp gnome-session
sudo adduser xrdp ssl-cert
echo "gnome-session" | tee ~/.xsession
echo "export XAUTHORITY=${HOME}/.Xauthority" | tee ~/.xsessionrc
echo "export GNOME_SHELL_SESSION_MODE=ubuntu" | tee -a ~/.xsessionrc
echo "export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg" | tee -a ~/.xsessionrc
echo "export XDG_CURRENT_DESKTOP=ubuntu:GNOME" | tee -a ~/.xsessionrc
sudo systemctl restart xrdp
