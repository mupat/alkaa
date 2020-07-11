git_user() {
  git config --get user.name
}

git_email() {
  git config --get user.email
}

source ~/.aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rvm use --latest

source ~/.nvm/nvm.sh
nvm use 14
echo -e "\033[1;30mUsed node version\033[0;0m: \033[0;36m$(nvm current)\033[0;0m"
echo -e "\033[1;30mUsed ruby version\033[0;0m: \033[0;36m$(ruby -v)\033[0;0m"

export LC_ALL="en_US.UTF-8"

echo -e "Working as \033[0;36m$(git_user)\033[0;0m[\033[1;30m$(git_email)\033[0;0m]"

# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH="/usr/local/opt/openssl/bin:$PATH"

# autoload -U promptinit; promptinit
# prompt pure

# . /usr/local/opt/asdf/asdf.sh
