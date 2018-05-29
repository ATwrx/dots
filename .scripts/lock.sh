#!/bin/bash
i3-msg -q floating toggle
cat ~/Pictures/terminal-icons-cheatsheet/ascii/peace.txt | lolcat 
echo "PEACE OUT..." | figlet | lolcat 
i3lock-fancy
clear
echo "JUST DO IT" | figlet | lolcat 
task list 
sleep 5 && exit
