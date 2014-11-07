#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS=$DIR/scripts
source $SCRIPTS/_config.sh #load config

# just ask if all stuff is there
cecho "Sublime Text2, Atom Editor, Window Tidy, Alfred 2" $CYAN
prompt "Installed base programs and closed them?"
answerYesNo "" "exit 0"

prompt "bootstrap sublime text 2?"
answerYesNo "source $SCRIPTS/sublime_text2.sh" "cecho skipping $GREY"

prompt "install homebrew and related programs?"
answerYesNo "source $SCRIPTS/homebrew.sh" "cecho skipping $GREY"

prompt "set window tidy config?"
answerYesNo "source $SCRIPTS/window_tody.sh" "cecho skipping $GREY"

prompt "install nodeJS?"
answerYesNo "source $SCRIPTS/node.sh" "cecho skipping $GREY"

prompt "bootstrap atom editor"
answerYesNo "source $SCRIPTS/atom.sh" "cecho skipping $GREY"

prompt "bootstrap alfred"
answerYesNo "source $SCRIPTS/Alfred.sh" "cecho skipping $GREY"

echo ""
echo ""

#set aliases from repo
link "$DIR/aliases" "$HOME/.aliases"
link "$DIR/bash_profile" "$HOME/.bash_profile"
link "$DIR/tmux.conf" "$HOME/.tmux.conf"
link "$DIR/gitconfig" "$HOME/.gitconfig"

#deactivate cloud sync with unsaved documents
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

cecho "done" $GREEN