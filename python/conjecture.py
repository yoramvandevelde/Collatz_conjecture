#!/usr/bin/env python3
# Collatz conjecture
# Seeming randomness in mathematics
# aka  : 3x+1
# video: https://www.youtube.com/watch?v=094y1Z2wpJg

from random import randrange
num = randrange(10000)
startnum = num
count = 0

print("\n=== Collatz conjecture. Using {0} ===".format(num))

while True:
  if (num % 2) == 0:
    num = num / 2
    print("\033[91m{0}\033[0m".format(int(num)))
  else:
    num = (num * 3) + 1
    print("\033[1m{0}\033[0m".format(int(num)))
  
  count += 1
  
  if num == 1:
    print("\nThe number {0} reached 1 in {1} steps, stopping to not loop forever.\n".format(startnum,count))
    break
