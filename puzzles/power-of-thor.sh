read LX LY TX TY

let thorX=TX
let thorY=TY

# game loop
while true; do

    # E: The level of Thor's remaining energy, representing the number of moves he can still make.
    read E
    
    directionX=""
    directionY=""
    echo "directionY: $directionY">&2
    echo "Ythor - YLight = $thorY - $LY">&2
    if [ $LY -gt $thorY ]; then
        directionY="S"
        let thorY=thorY+1
    elif [ $LY -lt $thorY ]; then
        directionY="N"
        let thorY=thorY-1
    fi
    echo "directionX: $directionX">&2
    echo "Xthor - XLight = $thorX - $LX ">&2
    if [ $LX -gt $thorX ]; then
        directionX="E"
        let thorX=thorX+1
    elif [ $LX -lt $thorX ]; then
        directionX="W"
        let thorX=thorX-1
    fi
    echo "directionX: $directionX">&2
    echo "${directionY}${directionX}"
done
