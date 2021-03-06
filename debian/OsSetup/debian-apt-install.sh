#!/bin/bash

# sudo apt-get install firmware-realtek
# sudo apt-get install firmware-iwlwifi

gitemail="wangbandi@gmail.com"
gitusername="huangming"
# sudo apt update & upgrade;

if [[ ! -d "~/tmp" ]];then
    mkdir ~/tmp
fi

[[ -e /etc/apt/sources.list.bak ]] || sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
cat /etc/apt/sources.list.bak | grep -v '^deb cdrom' | sudo tee /etc/apt/sources.list

sudo apt-get install -y tlp tlp-rdw smartmontools ethtool  thermald
sudo tlp stat

sudo apt-get -y install net-tools
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install traceroute
sudo apt-get -y install grep
sudo apt-get -y install gawk
sudo apt-get -y install sed
sudo apt-get -y install gzip
sudo apt-get -y install tree

sudo apt install git-core;
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "$gitemail"
git config --global user.name "$gitpassword"
curl -sS https://raw.githubusercontent.com/betanzos/my-scripts/master/git/.gitignore_global -o $HOME/.gitignore_global

# sudo apt install vim;
wget -c -P ~/tmp/ http://ftp.vim.org/ftp/ftp/vim/unix/vim-8.0.tar.bz2
cd ~/tmp && tar xvf vim-8.2.tar.bz2
cd vim82/
sudo apt install -y libncurses5-dev
sudo apt install -y build-essential
sudo apt remove vim-commen vim-tiny
# 注意：编译选项中有 Python 版本相关信息，如果你的 Python 版本不是 3.5，请手动修改
./configure --with-features=huge \
            --enable-fail-if-missing \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.7 \
            --with-python-config-dir=/usr/lib/python2.7 \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --with-lua-prefix=/usr/local \
            --enable-cscope \
            --enable-terminal \
            --enable-xim \
            --enable-fontset \
            --enable-gui=gtk3 \
            --with-x \
            --prefix=/opt/vim
make && sudo make install;

# oh-my-zsh
sudo apt install zsh;
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
# set $ZSH_CUSTOM=~/.oh-my-zsh/custom;
git clone https://github.com/denysdovhan/spaceship-prompt.git "~/.oh-my-zsh/themes/spaceship-prompt";
ln -s "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme";
sudo chsh -s $(which zsh);


sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool
git clone https://github.com/Airblader/i3 ~/tmp/i3-gaps

sudo apt-get -y install dmenu feh i3bar i3lock;
# sudo apt install -y i3-wm
sudo apt install -y xcompmgr
sudo apt install -y amixer
sudo apt install -y dunst
git clone https://github.com/dunst-project/dunst.git --depth=1

sudo apt install xfonts-wqy;
wget -c -P ~/tmp/ https://download.jetbrains.8686c.com/fonts/JetBrainsMono-1.0.3.zip?_ga=2.44363620.1566158997.1614165678-1753838135.1614165676
sudo unzip ~/tmp/JetBrainsMono-1.0.3.zip -d /usr/share/fonts/

# app launcher;set keyboard shortcuts command:rofi -show drun -show-icons
sudo apt install -y rofi;
sudo apt install ranger


sudo apt install laptop-mode-tools

sudo apt install peek

# sudo apt install ibus-rime;

sudo apt install -y unrar unzip;
sudo apt install -y filezilla;
wget -c -P ~/tmp/ https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i ~/tmp/teamviewer_amd64.deb

sudo apt install -y flameshot;

# cam
sudo apt install -y cheese

# record
sudo apt install peek
sudo apt install key-mon

sudo apt-get install -y gvfs-bin python3-gi gir1.2-appindicator3-0.1;
wget -c -P ~/tmp https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz
mkdir -p ~/.nutstore/dist && tar zxf ~/tmp/nutstore_linux_dist_x64.tar.gz -C ~/.nutstore/dist
~/.nutstore/dist/bin/install_core.sh
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf


wget -c -P ~/tmp/ https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10161/wps-office_11.1.0.10161.XA_amd64.deb;
sudo dpkg -i ~/tmp/wps-office_11.1.0.10161.XA_amd64.deb;

#wget -c -P ~/tmp/ https://download.virtualbox.org/virtualbox/6.0.10/VirtualBox-6.0-6.0.10_132072_fedora29-1.x86_64.rpm;
#sudo apt install ~/tmp/VirtualBox-6.0-6.0.10_132072_fedora29-1.x86_64.rpm;

#sudo apt install https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.rpm;
#sudo apt install kernel-devel kernel-devel-5.2.9-200.fc30.x86_64;
#sudo /sbin/vboxconfig;

wget -c -P ~/tmp/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb 

#video
sudo apt install vlc

#kindle
sudo apt install -y calibre;

# download tools
sudo apt install qbittorrent -y

curl -sS https://raw.githubusercontent.com/betanzos/my-scripts/master/git/.gitignore_global -o $HOME/.gitignore_global

# install vscode stable
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
      | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update;
sudo apt install -y code;

sudo apt-get install -y redshift;

sudo apt install ansible;

# dotfiles manager;symlink farm manager;
sudo apt install stow;

# dconf-editor
# sudo apt install -y dconf-editor;


## Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
## Docker-compose // Get current version https://github.com/docker/compose/releases
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## Setting docker-compose
sudo usermod -aG docker $(whoami)
sudo setfacl -m $USER:$USER:rw /var/run/docker.sock
sudo addgroup --system docker
sudo adduser $USER docker
docker-compose --version
echo "\n\n"
