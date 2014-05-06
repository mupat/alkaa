export PS1="\[\e[0m\][\[\e[1;36m\]\w\[\e[0m\]]-> "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

alias e=exit

if [ -z "$TMUX" ]; then # if tmux isnt running, start it
  tmux
fi
