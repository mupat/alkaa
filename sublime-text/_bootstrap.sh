#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper
SUBLIME=$APP/Sublime\ Text\ 2/Packages

# link user folder
link "$DIR/user/" "$SUBLIME/User"

#download packge control to Installed Packages
mkdir -p "$SUBLIME/../Installed Packages/" # make sure the folder for the package control exists
curl -o "$SUBLIME/../Installed Packages/Package Control.sublime-package" 'http://sublime.wbond.net/Package Control.sublime-package'
git clone https://github.com/mupat/Theme-Brackets.git "$SUBLIME/Theme - Brackets"
