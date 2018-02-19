#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

#install node
cecho "install nvm" $GREEN
git clone https://github.com/creationix/nvm.git $HOME/.nvm
source $HOME/.nvm/nvm.sh

nvm install stable # install latest stable version
nvm install --lts
nvm use stable # use latest stable version
nvm alias default stable # set latest stable version as default
