#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/_config.sh" #load config

#install homebrew
cecho "install homebrew" $GREEN
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

#install tmux
cecho "install tmux" $GREEN
brew install tmux
