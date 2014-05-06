#!/usr/bin/env bash

apt-get update
apt-get install tmux
apt-get install git

ln -s /vagrant/bash_profile ~/.bash_profile
ln -s /vagrant/tmux.conf ~/.tmux.conf
