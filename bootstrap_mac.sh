#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS=$DIR/_scripts
source $DIR/_helper.sh #load helper

prompt "Install homebrew?"
answerYesNo "source $SCRIPTS/homebrew.sh" "cecho skipping $GREY"

readCaskTasks $DIR/cask_tasks
prompt "Install cask stuff (${tasks[*]})?"
answerYesNo "source $SCRIPTS/cask.sh" "cecho skipping $GREY"

prompt "Install nodeJS?"
answerYesNo "source $SCRIPTS/node.sh" "cecho skipping $GREY"

prompt "Install rvm and latest stable ruby?"
answerYesNo "source $SCRIPTS/ruby.sh" "cecho skipping $GREY"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # make sure we have the correct DIR
#set aliases from repo
link "$DIR/aliases" "$HOME/.aliases"
link "$DIR/bash_profile" "$HOME/.bash_profile"
link "$DIR/gitconfig" "$HOME/.gitconfig"
link "$DIR/zshrc" "$HOME/.zshrc"
cecho "Bash and zsh files linked" $GREEN

prompt "Install and customize zsh?"
answerYesNo "source $SCRIPTS/zsh.sh" "cecho skipping $GREY"

echo ""

#deactivate cloud sync with unsaved documents
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
cecho "Deactivated cloud sync for non saved files" $GREEN

#deactivate auto open of apples photo app
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
cecho "Deactivated auto open of photo app" $GREEN

#deactivate auto open of itunes
defaults -currentHost write com.apple.iTunes DeviceBackupsDisabled -bool true
cecho "Deactivated auto open of itunes" $GREEN

#allow ios simulator to be used in fullscreen
defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES

echo ""
echo ""

cecho "Done 🎉" $GREEN
