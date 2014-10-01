#!/usr/bin/env bash

# some constants
userPath=/home/vagrant
nodeVersion=0.10

# install necessary programs
apt-get update
apt-get -y install tmux
apt-get -y install git
apt-get -y install curl
apt-get -y install make
apt-get -y install vim

# install nvm and node
git clone git://github.com/creationix/nvm.git "$userPath/.nvm"
source  "$userPath/.nvm/nvm.sh"
nvm install $nodeVersion

# link bash profile and tmux config
ln -s /vagrant/bash_profile "$userPath/.bash_profile"
ln -s /vagrant/aliases "$userPath/.aliases"
ln -s /vagrant/tmux.conf  "$userPath/.tmux.conf"
