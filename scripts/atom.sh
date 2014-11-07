#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/_config.sh #load config
ATOM_APP=$HOME/.atom
ATOM=$DIR/../atom

link "$ATOM/config.cson" "$ATOM_APP/config.cson"
link "$ATOM/init.coffee" "$ATOM_APP/init.coffee"
link "$ATOM/keymap.cson" "$ATOM_APP/keymap.cson"
link "$ATOM/snippets.cson" "$ATOM_APP/snippets.cson"
link "$ATOM/styles.less" "$ATOM_APP/styles.less"

cecho "install starred packages" $GREEN
apm starred --install