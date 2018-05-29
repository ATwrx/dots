# ATrx zsh.conf @ 2018 via a boat
## oh-my-zsh plugins 
plugins=( globalias emoji emotty man colored-man-pages
  command-not-found git github dotenv archlinux
  catimg docker-compose docker-machine docker kubectl
  heroku meteor task node npm npx nvm react-native
  pip python3 redis)
powerline-daemon -q # powerline-daemon & bindings
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
. ~/.config/powerlevel9k.vars # pl9k options
source $ZSH/oh-my-zsh.sh # Add remote configs
bindkey -v # terminal vi mode 
# Uncomment to enable pywal persistence... 
#    if your into that kind of thing. 
# (cat ~/.cache/wal/sequences &)
