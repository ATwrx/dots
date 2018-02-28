#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias v='vim'
alias vs='sudo vim'
alias terfont='setfont ter-v32n'

alias sudo='sudo '
alias pacmans='sudo pacman -S'
alias src='pacman -Ss'
alias pacup="sudo pacman -Syyu"
alias reflector="sudo reflector --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias pacy='sudo pacman -Syy'
alias srcy='yaourt -Ss'
alias aur='yaourt -S '

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias lx='ls -XA'

alias gitc='git clone'
alias gits='git status'
alias gcom='git commit -m '
alias gcoma='git commit -am '

alias wifi='sudo wifi-menu'
alias startsnap='sudo systemctl start snapd'
alias curClass='cd ~/Documents/smu/Testing'

PS1='[\u@\h \W]\$'
