# define prefix color and text
export PS1="\[\e[0m\][\[\e[1;36m\]\w\[\e[0m\]]-> "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

# set aliases
alias e=exit

# start tmux
if [ -z "$TMUX" ]; then # if tmux isnt running, start it
  tmux
fi

source ~/.nvm/nvm.sh # activate nvm
nvm use 0.10 # active node version
