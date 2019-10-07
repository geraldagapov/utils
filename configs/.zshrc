export ZSH="/home/gerald/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

# Key bindings

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
