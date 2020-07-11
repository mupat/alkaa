#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

#install homebrew
cecho "install homebrew" $GREEN
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

#install cask
cecho "install homebrew cask" $GREEN
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

cecho "install actual git version" $GREEN
brew install git
