#!/bin/zsh
# Terminate already running bar(s) 
killall -q polybar nm-applet cbatticon blueberry-tray
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch polybar(s) and tray apps
polybar topbar & 
echo "Polybar has launched..."
# cbatticon -r 5 -l 15 & # tray battery r:critcal l:low
# Substitute to terminal info
nm-applet & # Wifi menu
blueberry-tray & # Bluetooth Menu
echo "Tray programs have launched../"
