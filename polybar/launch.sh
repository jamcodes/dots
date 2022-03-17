#!/bin/sh
# pkill polybar
# sleep 1;

# Terminate already running bar instances
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3wmthemer_bar &
  done
else
  polybar --reload i3wmthemer_bar &
fi
