#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper

link "$DIR/settings.plist" "$PREFERENCES/com.naotaka.ClipMenu.plist"