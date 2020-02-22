import sys
import math

class Enemy:
    def __init__(self, name, dist):
        self.name = name
        self.dist = dist

# CodinGame planet is being attacked by slimy insectoid aliens.
# <---
# Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player.
def debugInformation(enemys):
    print("Debug Information", file=sys.stderr)
    for enemy in enemys:
        print('- enemy : {}'.format(enemy.name), file=sys.stderr)
        print('- dist  : {}'.format(enemy.dist), file=sys.stderr)

def getClosestEnemy(enemys):
    print(sorted(enemys, key=lambda Enemy: Enemy.dist)[0].name)

# game loop
while True:
    enemys = []
    enemy_1 = input()  # name of enemy 1
    dist_1 = int(input())  # distance to enemy 1
    enemys.append(Enemy(enemy_1, dist_1))
    enemy_2 = input()  # name of enemy 2
    dist_2 = int(input())  # distance to enemy 2
    enemys.append(Enemy(enemy_2, dist_2))
    # Show informations
    debugInformation(enemys)
    # Get the closest enemy
    getClosestEnemy(enemys)
