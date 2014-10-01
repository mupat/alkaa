#!/bin/bash

### variables
APP=$HOME/Library/Application\ Support
SUBLIME=$APP/Sublime\ Text\ 2/Packages

GREEN="\x1B[;032m"
NC="\x1B[0m"
### commands

#set bash_profile from repo
echo "${GREEN}set bash_profile${NC}"
rm "$HOME/.bash_profile"
ln -s "$PWD/bash_profile" "$HOME/.bash_profile"

#set aliases from repo
echo "${GREEN}set aliases${NC}"
rm "$HOME/.aliases"
ln -s "$PWD/aliases" "$HOME/.aliases"

#set tmux config from repo
echo "${GREEN}set tmux config${NC}"
rm "$HOME/.tmux.conf"
ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"

#set git config
echo "${GREEN}set git config${NC}"
rm "$HOME/.gitconfig"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"

#install homebrew
echo "${GREEN}install homebrew${NC}"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

#install tmux
echo "${GREEN}install tmux${NC}"
brew install tmux

#install node
echo "${GREEN}install nvm${NC}"
git clone https://github.com/creationix/nvm.git $HOME/.nvm
source $HOME/.nvm/nvm.sh

echo "${GREEN}install node 0.10${NC}"
nvm install 0.10

#bootstrap sublime
echo "${GREEN}bootstrap sublime${NC}"
#make sure to start sublime at least one time
sudo rm -rf "$SUBLIME/User/" #remove existing user folder
sudo ln -s "$PWD/sublime_user/" "$SUBLIME/User" # link user folder from here
#download packge control to Installed Packages
sudo curl -o "$SUBLIME/../Installed Packages/Package Control.sublime-package" 'http://sublime.wbond.net/Package Control.sublime-package'
sudo git clone git@github.com:mupat/Theme-Brackets.git "$SUBLIME/Theme - Brackets"

echo "${GREEN}done${NC}"