#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

#install tmux
cecho "install tmux" $GREEN
brew install tmux

cecho "link tmux config" $GREEN
link "$DIR/../tmux.conf" "$HOME/.tmux.conf"
