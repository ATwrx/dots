export ZSH=/home/ao/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR=/usr/bin/nvim
export MANPATH="/usr/local/man:$MANPATH"
export ARCHFLAGS="-arch x86_64"
export BROWSER='firefox'
export PAGER='less'
export PATH=$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/2.5.0/bin:$HOME/.local/bin/:$PATH
export npm_config_prefix=~/.node_modules

# Enable pywal persistence
(cat ~/.cache/wal/sequences &)

#######################
## oh-my-zsh plugins ##
#######################

plugins=(
  catimg
  git
  github
  man
  dotenv
  archlinux
  colored-man-pages
  command-not-found
  heroku
  docker-compose
  docker-machine
  docker
  meteor
  npm
  npx
  npv
  pip
  python3
)

########################
## User configuration ##
########################

# powerline-daemon
powerline-daemon -q
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

# powerlevel9k powerline theme (oh-my-zsh)
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

################################
##  POWERLEVEL9K OPTIONS                                     
################################
##  UNUSED PROMPT ELEMENTS                                    
## [ context  history os_icon
##   battery disk_usage user
##   load battery node_version ]  
################################

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable newline vi_mode) 
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs status vcs )


# hides the check mark on each line
POWERLEVEL9K_STATUS_VERBOSE=false

# new line options
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# line prefixes
# POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' \uf0fb '

# dir truncation
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER="/"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"

########################
## segment colors : { ##
##  white black blue  ##
##  red green yellow  ##
##  cyan magenta    } ##
########################

# vi insert
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="blue"
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="black"
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND="red"
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="black"

# node version
POWERLEVEL9K_NODE_VERSION_FOREGROUND="black"
POWERLEVEL9K_NODE_VERSION_BACKGROUND="white"

# os icon
POWERLEVEL9K_OS_ICON_BACKGROUND="blue"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"

# dir
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="cyan"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="cyan"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="cyan"

# time
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M }" 

# battery
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='black'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='cyan'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_LOW_COLOR_BACKGROUND='black'
POWERLEVEL9K_BATTERY_LOW_COLOR_FOREGROUND='red'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'


# Add remote configs
#############
source $ZSH/oh-my-zsh.sh
# terminal vi mode
bindkey -v

## Aliases ##
#############

# - vim
alias v='nvim'
alias sv='sudo nvim'
alias vim-plugs='pacman -Sg vim-plugins'
alias vim-bundles='cd ~/.vim/bundle'

# - ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias lx='ls -XA'

# - pacman and yaourt
alias pacmans='sudo pacman -S'
alias src='pacman -Ss'
alias pacup="sudo pacman -Syyu"
alias pacy='sudo pacman -Syy'
alias srch='yaourt -Ss'
alias aur='yaourt -S '

# - update repo mirrors 
alias reflector="sudo reflector --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

# - git
alias gitc='git clone'
alias gstat='git status'
alias gcom='git commit -m'
alias gcoma='git commit -am'
alias gpush='git push'
alias gpull='git pull'
alias gstash='git stash'

# stringing along node_modules....
alias yarnin='yarn --emoji  add '
alias npg='npm i -g '
alias nps='npm start'
alias npss='npm search'
alias npi='npm info'
alias npiw='grep homepage < npm info'
alias nodes='nodemon'
alias send-env="cat .env | "

# - projects 
alias proj='cd ~/Documents/swbi/repo'
alias ibm="cd Documents/ibm/"

# Shortcuts
alias conf='cd ~/.config'
alias zshrc='v ~/.zshrc'
alias vimrc='v ~/.config/nvim/init.vim'

# - misc. appended section
alias start-snapd='sudo systemctl start snapd'
alias grip='firefox localhost:6419 & grip README.md  '
alias ytd="cd ~/Videos/YT/ && youtube-dl "

alias git=hub
alias tree='tree --filelimit 20'
