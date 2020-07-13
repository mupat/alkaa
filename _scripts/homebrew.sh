#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

# install homebrew
cecho "Install homebrew" $GREEN
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# install cask
cecho "Install homebrew cask" $GREEN
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

# install mas (mac app stpre cli)
cecho "Install MAS" $GREEN
brew install mas

cecho "Install actual git version" $GREEN
brew install git
