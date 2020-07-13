# zsh options
setopt NO_CASE_GLOB # case insensitive globbing
setopt AUTO_CD # cd works without cd :D
setopt CORRECT # correct inputs
setopt CORRECT_ALL
setopt GLOB_COMPLETE

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # store history after exit
setopt EXTENDED_HISTORY # more infos for a history entry
setopt SHARE_HISTORY # share history across multiple zsh sessions
setopt APPEND_HISTORY # append to history
setopt INC_APPEND_HISTORY # adds commands as they are typed, not at shell exit
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicates first
setopt HIST_IGNORE_DUPS # do not store duplications
setopt HIST_FIND_NO_DUPS #ignore duplicates when searching
setopt HIST_REDUCE_BLANKS # removes blank lines from history

git_user() {
  git config --get user.name
}

git_email() {
  git config --get user.email
}

source ~/.aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rvm use --latest > /dev/null 2>&1;

source ~/.nvm/nvm.sh
nvm use stable > /dev/null 2>&1;

export LC_ALL="en_US.UTF-8"

echo -e "\033[1;30mUsed node version\033[0;0m: \033[0;36m$(nvm current)\033[0;0m"
echo -e "\033[1;30mUsed ruby version\033[0;0m: \033[0;36m$(ruby -v)\033[0;0m"
echo -e "Working as \033[0;36m$(git_user)\033[0;0m[\033[1;30m$(git_email)\033[0;0m]"

# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH="/usr/local/opt/openssl/bin:$PATH"

autoload -Uz compinit && compinit

autoload -U promptinit; promptinit
# prompt pure
prompt spaceship

# . /usr/local/opt/asdf/asdf.sh
