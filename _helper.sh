#!/bin/bash

### variables
LIBRARY=$HOME/Library
APP=$LIBRARY/Application\ Support
PREFERENCES=$LIBRARY/Preferences

# colors
CYAN='\033[0;36m'
GREEN="\033[0;32m"
RED='\033[0;31m'
GREY='\033[1;30m'
NC="\033[0;0m"

### methods

readCaskTasks() {
  IFS=$'\n' read -d '' -r -a tasks < $1 # read list of all apps 
}

# Colored echo
# arg $1 = message
# arg $2 = Color
cecho() {
  echo -e "${2}${1}${NC}"
}

# show a prompt and save the result in 'response' variable
# arg $1 = message
prompt() {
  echo ""
  echo -n "${1} [y/n] "
  read -r response
}

# run cmd depending of the content 'response' variable
# yY executes, all other skips
# arg $1 = Yes CMD
# arg $2 = No CMD
answerYesNo() {
  case $response in
    [yY])
      $1
      ;;
    *) 
      $2
      ;;
  esac
}

# symlink a file
# arg $1 = source
# arg $2 = target
link() {
  echo ""
  cecho "set ${1} -> ${2}" $GREEN # hint in cli
  rm -rf "$2" # remove existing stuff
  mkdir -p "$(dirname "$2")" # create folder structure if necessary
  ln -s "$1" "$2" # link source
}
