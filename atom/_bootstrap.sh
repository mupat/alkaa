#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper
ATOM_APP=$HOME/.atom

link "$DIR/config.cson" "$ATOM_APP/config.cson"
link "$DIR/init.coffee" "$ATOM_APP/init.coffee"
link "$DIR/keymap.cson" "$ATOM_APP/keymap.cson"
link "$DIR/snippets.cson" "$ATOM_APP/snippets.cson"
link "$DIR/styles.less" "$ATOM_APP/styles.less"

cecho "install starred packages" $GREEN
apm starred --install