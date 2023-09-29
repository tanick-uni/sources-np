#!/bin/bash

if [[ -e ~/.config/tint2/.nightmodeon ]]; then
    redshift -P -O 4500
fi

start-jgmenu -d
