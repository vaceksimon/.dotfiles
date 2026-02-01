#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='lsd'
alias l='ls -l'
alias la='ls -al'
alias lt='ls --tree'
alias grep='grep --color=auto'

# Sets the primary prompt string in a bash shell displaying '[username@hostname workdir]'
PS1='[\u@\h \W]\$ '

# does some stuff to enable forward search in bash history with Ctrl+S
stty -ixon

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias exot=exit

export EDITOR=/usr/bin/vim

