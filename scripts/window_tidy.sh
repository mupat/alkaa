#!/bin/sh 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/_config.sh #load config
TIDY=$HOME/Library/Application\ Support/Window\ Tidy

link "$DIR/window_tidy/" "$TIDY"