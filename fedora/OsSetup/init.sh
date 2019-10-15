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

./fedora-install.sh

### Set gnome-terminal
./fedora-settings.sh


