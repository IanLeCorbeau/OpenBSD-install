HISTFILE="$HOME/.ksh_history"
HISTSIZE=1000
HISTCONTROL=ignoredups

alias tshell='tmux new-session -s shell'
alias tmail='tmux new-session -s mail'
alias ttext='tmux new-session -s text'
alias cls='clear'
alias bye='exit'
alias :q='exit'

export PS1="\u@\h:\W\$ "
set -o vi
