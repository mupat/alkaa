#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper
SUBLIME=$APP/Sublime\ Text\ 2/Packages

# run() {
link "$DIR/user/" "$SUBLIME/User/"

#download packge control to Installed Packages
curl -o "$SUBLIME/../Installed Packages/Package Control.sublime-package" 'http://sublime.wbond.net/Package Control.sublime-package'
git clone git@github.com:mupat/Theme-Brackets.git "$SUBLIME/Theme - Brackets"
# }

# #start bootstrap sublime
# cecho "bootstrap sublime" $GREEN
# prompt "Did you started sublime at least once, to make sure the user folder exists?"
# answerYesNo "run" "cecho skipping $GREY"