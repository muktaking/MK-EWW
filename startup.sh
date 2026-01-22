#!/bin/bash
# Wait until WAYLAND_DISPLAY is available
while [ -z "$WAYLAND_DISPLAY" ]; do
  sleep 1
done
# Define the full path to eww
EWW_BIN="/usr/bin/eww"

# 1. Wait for the desktop environment to settle
sleep 5

# 2. Kill and restart
$EWW_BIN kill
$EWW_BIN daemon &

# 3. Wait for the daemon to be ready
sleep 2

# 4. Open widgets using full paths for scripts in yuck if necessary
$EWW_BIN open my-clock
$EWW_BIN open network-widget
