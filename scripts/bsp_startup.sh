#!/bin/bash

powerline-daemon &
sxhkd &
compton &
sleep 2
naga -start &
~/.local/bin/notify-listener.py &
steam -silent &
keepassxc &
