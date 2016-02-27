# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.


# game loop
while true; do
    read SX SY
    echo "SpaceShip ($SX;$SY)" >&2
    aMountains=()
    iMountainHighest=0
    for (( i=0; i<8; i++ )); do
        # MH: represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        read MH
        if [ $MH -gt $iMountainHighest ]; then
            let iMountainHighest=$MH
        fi
        aMountains+=($MH)
    done
    action="HOLD"
    if [[ $SX == 0 || $SX == 7 ]]; then
        # reset shooted
        shooted=0
    fi
    echo "aMountain[SX]: ${aMountains[$SX]} " >&2
    echo "iMountainHighest: $iMountainHighest" >&2
    if [[ ${aMountains[$SX]} -gt 0 && $shooted == 0 ]]; then
        if [ ${aMountains[$SX]} == $iMountainHighest ]; then
            action="FIRE"
            shooted=1
        fi
    fi
    # we need to sort the array
    # Write an action using echo
    # To debug: echo "Debug messages..." >&2

    echo $action # either:  FIRE (ship is firing its phase cannons) or HOLD (ship is not firing).
done
