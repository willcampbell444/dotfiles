#!/usr/bin/env bash

sleep 3
$HOME/dotfiles/polybar/exit.sh

# Launch bar1 and bar2
polybar -c $HOME/dotfiles/polybar/config Bar &
lemonbar -p -g 3840x80+0+0 -n blank_bar

echo "Bars launched..."
