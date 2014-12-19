#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper

#install tmux
cecho "install tmux" $GREEN
brew install tmux
brew install reattach-to-user-namespace

cecho "link tmux config" $GREEN
link "$DIR/../tmux.conf" "$HOME/.tmux.conf"
