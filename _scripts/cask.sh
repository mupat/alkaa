#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper

loop() {
  readCaskTasks $DIR/../cask_tasks # read cask tasks as array
  for task in "${tasks[@]}" # loop through array
  do
    # check if we need to ask to install this task
    if [ $1 = true ]; then
      prompt "Install $task?"
      answerYesNo "" "continue" # if not yes continue with next task
    fi

    # install task
    cecho "Install $task" $GREEN
    brew cask install $task

    # check if we have a bootstrap script, that need to run
    if [ -f $DIR/../$task/_bootstrap.sh ]; then
      source $DIR/../$task/_bootstrap.sh
    fi
  done
}

prompt "Install interactively?"
answerYesNo "loop true" "loop false"
