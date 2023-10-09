# Author: Zakaria CHOUKRI

# Exercise 4

import math

def discriminant(a, b, c):
    return b*b - 4*a*c

def solve(a, b, c):
    delta = discriminant(a, b, c)
    
    if delta > 0:
        root1 = (-b + math.sqrt(delta)) / (2*a)
        root2 = (-b - math.sqrt(delta)) / (2*a)
        print("Root 1:", root1)
        print("Root 2:", root2)
    
    elif discriminant == 0:
        root = -b / (2*a)
        print("Root:", root)
    
    else:
        print("No real roots")

solve(1, -5, 6)
