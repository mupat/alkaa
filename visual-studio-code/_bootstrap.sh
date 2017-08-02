#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper
CODE_USER_SETTINGS=$APP/Code/User

link "$DIR/settings.json" "$CODE_USER_SETTINGS/settings.json"
link "$DIR/keybindings.json" "$CODE_USER_SETTINGS/keybindings.json"
link "$DIR/locale.json" "$CODE_USER_SETTINGS/locale.json"
link "$DIR/snippets/" "$CODE_USER_SETTINGS/snippets"
