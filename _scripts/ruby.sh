#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

#install rvm
cecho "install rvm" $GREEN
\curl -sSL https://get.rvm.io | bash
source $HOME/.rvm/scripts/rvm

rvm install stable # install latest stable version
rvm use stable --default # use latest stable version
