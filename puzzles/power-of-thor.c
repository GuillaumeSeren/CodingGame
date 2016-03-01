#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/
int main()
{
    int lightX;     // the X position of the light of power
    int lightY;     // the Y position of the light of power
    int initialTX;  // Thor's starting X position
    int initialTY;  // Thor's starting Y position
    int thorX;      // Thor's X actual position
    int thorY;      // Thor's Y actual position.
    scanf("%d%d%d%d", &lightX, &lightY, &initialTX, &initialTY);
    thorX=initialTX;
    thorY=initialTY;
    // game loop
    while (1) {
        int remainingTurns; // The remaining amount of turns Thor can move. Do not remove this line.
        scanf("%d", &remainingTurns);

        char *moveX = "";
        char *directionY = "";
        if (thorY > lightY) {
            directionY = "N";
            thorY--;
        } else if (thorY < lightY) {
            directionY = "S";
            thorY++;
        }
        if (thorX > lightX) {
            moveX = "W";
            thorX--;
        } else if (thorX < lightX) {
            moveX = "E";
            thorX++;
        }
        printf("%s%s\n", directionY, moveX);
    }

    return 0;
}
