#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout  5 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock \
      --screenshots \
      --clock \
      --indicator \
      --indicator-radius 100 \
      --indicator-thickness 7 \
      --effect-blur 7x5 \
      --effect-vignette 0.5:0.5 \
      --ring-color bb00cc \
      --key-hl-color 880033 \
      --line-color 00000000 \
      --inside-color 00000088 \
      --separator-color 00000000 \
      --grace 2 \
      --fade-in 0.2
# Kills last background task so idle timer doesn't keep running
kill %%
