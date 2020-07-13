#!/bin/bash
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../_helper.sh" #load helper

cecho "Install spaceship-prompt" $GREEN
npm install -g spaceship-prompt

cecho "Install pure-prompt" $GREEN
npm install --global pure-prompt
