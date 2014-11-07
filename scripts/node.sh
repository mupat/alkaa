#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/_config.sh" #load config

install11() {
  cecho "installing node 0.11.x" $GREEN
  nvm install 0.10
}

install10() {
  cecho "install node 0.10.x" $GREEN
  nvm install 0.10
}

#install node
cecho "install nvm" $GREEN
git clone https://github.com/creationix/nvm.git $HOME/.nvm
source $HOME/.nvm/nvm.sh

prompt "install node 11 (currently beta)?"
answerYesNo "install11" "install10"
