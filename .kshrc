# Custom .kshrc
# $Id: .kshrc,v 1.2 2023/10/21 22:46:26 i Exp $

HISTFILE="$HOME/.ksh_history"
HISTSIZE=1000
HISTCONTROL=ignoredups

alias tshell='tmux new-session -s shell'
alias tmail='tmux new-session -s mail'
alias ttext='tmux new-session -s text'
alias cls='clear'
alias bye='exit'
alias :q='exit'

export PS1="\u@\h:\w\$ "
export VISUAL="vim"
export EDITOR="$VISUAL"
set -o vi

uname -a
