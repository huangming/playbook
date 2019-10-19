#!/bin/bash

#sudo dnf update & upgrade;

if [ !-d "~/tmp"];then
    mkdir ~/tmp
fi

sudo dnf install git-core;

sudo dnf install i3 i3status dmenu i3lock xbacklight feh;
sudo dnf copr enable gregw/i3desktop;
sudo dnf install i3desktop;
sudo dnf install font-awesome powerline-fonts;
sudo dnf install xfce4-notifyd;
gsettings set org.gnome.nautilus.icon-view default-zoom-level small;

# app launcher;set keyboard shortcuts command:rofi -show drun -show-icons
sudo dnf install rofi;

sudo dnf install ibus-rime;

sudo dnf install gnome-tweak-tool;

sudo dnf install unrar unzip;

sudo dnf install flameshot;

wget -c -P ~/tmp https://www.jianguoyun.com/static/exe/installer/fedora/nautilus_nutstore_amd64.rpm;
sudo dnf install ~/tmp/nautilus_nutstore_amd64.rpm;

sudo dnf install vim-X11;

wget -c -P ~/tmp/ https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/8722/wps-office-11.1.0.8722-1.x86_64.rpm;
sudo dnf install ~/tmp/wps-office-11.1.0.8722-1.x86_64.rpm;

wget -c -P ~/tmp/ https://download.virtualbox.org/virtualbox/6.0.10/VirtualBox-6.0-6.0.10_132072_fedora29-1.x86_64.rpm;
sudo dnf install ~/tmp/VirtualBox-6.0-6.0.10_132072_fedora29-1.x86_64.rpm;

#pannel applet:ScreenShot+Record Desktop
#sudo install ffmpeg xdotool x11-utils;

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-30.noarch.rpm;

#sudo dnf install https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.rpm;
#sudo dnf install kernel-devel kernel-devel-5.2.9-200.fc30.x86_64;
#sudo /sbin/vboxconfig;

#music
sudo dnf install cmus;
sudo dnf install gradio;

#video
sudo dnf install vlc

#kindle
sudo dnf install calibre;

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc;
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';
# Then update the package cache and install the package using dnf (Fedora 22 and above):
sudo dnf check-update;
sudo dnf install code;

# dotfiles manager;symlink farm manager;
sudo dnf install stow;

