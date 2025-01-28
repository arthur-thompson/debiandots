# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arthur/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

prompt redhat

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias r=ranger
alias s='systemctl suspend'
alias up='sudo apt update && sudo apt upgrade -y'
alias n='nnn -H -e'

export FZF_DEFAULT_COMMAND='find .'
