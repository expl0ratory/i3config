#!/bin/sh

BAT_STATE=`upower -i $(upower -e | grep 'BAT') | grep state: | awk '{print $2}'`

if [ $BAT_STATE != "discharging" ]; then
    exec compton
fi
