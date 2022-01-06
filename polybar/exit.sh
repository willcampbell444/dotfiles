#!/usr/bin/env bash

killall -q lemonbar
killall -q polybar

while pgrep -u $UID -x lemonbar >/dev/null; do sleep 1; done
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

