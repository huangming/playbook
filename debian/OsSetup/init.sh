#!/bin/bash

set -x

### Check for root
if not [ "$EUID" -ne 0 ]
  then echo "This script must NOT be ran as root."
  exit
fi

### Installing aptitude and base packages
echo "Installing aptitude and base packages."
sudo apt update & upgrade

./debian-apt-install.sh

### Set cinnamon desktop
./debian-cinnamon-settings.sh




