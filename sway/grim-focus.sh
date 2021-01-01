#!/bin/bash
grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') $(xdg-user-dir)/Pictures/Screenshot_$(date +'%Y-%m-%d-%H%M%S.png')
