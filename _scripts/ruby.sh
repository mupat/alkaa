#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

#install rvm
cecho "Install rvm" $GREEN
\curl -sSL https://get.rvm.io | bash
source $HOME/.rvm/scripts/rvm

rvm install ruby --latest # install latest stable version
rvm use --latest # use latest stable version
