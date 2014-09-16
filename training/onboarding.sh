#!/bin/bash
# -*- coding: UTF8 -*-

 # The code below will read all the game information for you.
# On each game turn, information will be available on the standard input, you will be sent:
# -> the total number of visible enemies
# -> for each enemy, its name and distance from you
# The system will wait for you to write an enemy name on the standard output.
# Once you have designated a target:
# -> the cannon will shoot
# -> the enemies will move
# -> new info will be available for you to read on the standard input.


# game loop
while true; do
    # declare array
    declare -A threat
    # count: The number of current enemy ships within range
    read count
    echo -e "threat number: "$count'\n' >&2
    for (( i=0; i<count; i++ )); do
        # enemy: The name of this enemy
        # dist: The distance to your cannon of this enemy
        read enemy dist
        #echo "--> {dist:\""$dist"\"nom:\""$enemy"\"}"
        threat[$dist]=$enemy
    done
    # we need to get the nearest enemy
    # Sort the key
    key=$(echo -e "${!threat[@]}" | sed 's/[[:space:]]/\n/g' | sort)
    echo -e "Mapping: "$key'\n' >&2
    # Get the first
    target=$(echo -e ${key} | sed 's/\([0-9]+*\)[[:space:]].*/\1/')
    echo -e "Nearest: "$target'\n' >&2
    # To debug: echo "Debug messages..." >&2
    focus="${threat[$target]}"
    echo -e "focus: "${focus}'\n' >&2
    echo "${focus}" # The name of the most threatening enemy (HotDroid is just one example)
    unset threat
    unset key
    unset target
done
