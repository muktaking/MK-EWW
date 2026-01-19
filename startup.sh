#!/bin/bash

# Kill any existing eww instances (good for reloading)
eww kill

# Start the daemon
eww daemon

# Open your widget
eww open my-clock
eww open network-widget
