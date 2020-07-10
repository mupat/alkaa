#!/bin/bash
if zsh gdate 2>/dev/null; then
  zsh
else
  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  }

  git_user() {
    git config --get user.name
  }

  git_email() {
    git config --get user.email
  }

  # define prefix color and text
  export PS1="\[\e[0m\][\[\e[1;36m\]\w\[\e[0m\]]\[\e[1;30m\]\$(parse_git_branch)\[\e[0m\]-> "
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
  export TERM=xterm-256color

  # load bashrc, if available
  if [ -f ~/.bashrc ]; then
    source ~/.bashrc
  fi

  # load aliases, if available
  if [ -f ~/.aliases ]; then
    source ~/.aliases
  fi

  # add current working directory as title to iterm
  echo -ne "\033];$PWD\007"

  # activate nvm and show current used node version
  source ~/.nvm/nvm.sh
  nvm use --lts
  echo -e "\033[1;30mUsed node version\033[0;0m: \033[0;36m$(nvm current)\033[0;0m"

  # activate rvm and show current used ruby version
  #source ~/.rvm/scripts/rvm
  #echo -e "\033[1;30mUsed ruby version\033[0;0m: \033[0;36m$(ruby -v)\033[0;0m"

  # show configured git user
  echo -e "Working as \033[0;36m$(git_user)\033[0;0m[\033[1;30m$(git_email)\033[0;0m]"

  ### Added by the Heroku Toolbelt
  # export PATH="/usr/local/heroku/bin:$PATH"

  # export BUNDLER_EDITOR="atom"
  #
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  export JAVA_HOME=$(/usr/libexec/java_home)
  export PATH="/usr/local/opt/openssl/bin:$PATH"

fi
