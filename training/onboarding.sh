#!/bin/bash
# -*- coding: UTF8 -*-

# CodinGame planet is being attacked by slimy insectoid aliens.

function addThreat() {
    threat["$2"]="$1"
    echo "Add Enemy1{$enemy1, $dist1}" >&2
}

function getNearestThreat() {
    local key=$(echo -e "${!threat[@]}" | sed 's/[[:space:]]/\n/g' | sort -n | head -1)
    echo "$key"
}

# game loop
while true; do
    # enemy1: name of enemy 1
    read enemy1
    # dist1: distance to enemy 1
    read dist1
    # enemy2: name of enemy 2
    read enemy2
    # dist2: distance to enemy 2
    read dist2

    # Declare map of threat
    declare -A threat
    # echo "->Enemy1{name: $enemy1, dist: $dist1}" >&2
    addThreat "$enemy1" "$dist1"
    # echo "->Enemy2{name: $enemy2, dist: $dist2}" >&2
    addThreat "$enemy2" "$dist2"
    # Find the nearest one
    key=$(getNearestThreat)
    echo "nearest: $key" >&2

    # echo "enemy" # replace with correct ship name
    echo "${threat[$key]}"
    unset threat
    unset key
done
