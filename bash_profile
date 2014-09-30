# define prefix color and text
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[0m\][\[\e[1;36m\]\w\[\e[0m\]] \[\e[1;30m\]\$(parse_git_branch)\[\e[0m\]-> "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

# set aliases
alias e=exit
alias g=git
alias m=make
alias c=clear
alias la="ls -laht"
alias rb="source ~/.bash_profile"

# start tmux
if [ -z "$TMUX" ]; then # if tmux isnt running, start it
  tmux
fi

source ~/.nvm/nvm.sh # activate nvm
nvm use 0.11 # active node version
