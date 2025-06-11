#!/bin/bash

# Kill Rofi if already running before execution
if pgrep -x "rofi" >/dev/null; then
  pkill rofi
fi

# while true; do
#   result=$(rofi -modi emoji -show emoji -kb-secondary-copy "" -kb-custom-1 Ctrl+c)
#   if [ $? -ne 0 ]; then
#     exit
#   fi
#   if [ -n "$result" ]; then
#     echo "$result" | wl-copy
#   fi
# done
rofi -modi emoji -show emoji -kb-secondary-copy "" -kb-custom-1 Ctrl+c
