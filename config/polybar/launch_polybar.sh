#!/bin/zsh
# Restarts Polybar

# Stop Polybar
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Start polybar on all monitors
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main -c "$HOME/.config/polybar/config" &
done 
