#!/bin/bash
# cd ~/Pictures &&
grim -g "$(slurp)" $(xdg-user-dir)/Pictures/Screenshot_$(date +'%Y-%m-%d-%H%M%S.png')
