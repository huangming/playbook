#!/bin/bash

set -x

### Check for root
if not [ "$EUID" -ne 0 ]
  then echo "This script must NOT be ran as root."
  exit
fi

### Installing aptitude and base packages
echo "Installing aptitude and base packages."
sudo dnf update & upgrade

./fedora-dnf-install.sh

### Set cinnamon desktop
./fedora-cinnamon-settings.sh

### Set gnome-terminal
./fedora-gnome-terminal-settings.sh



