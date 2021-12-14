#!/usr/bin/env lua
-- Collatz conjecture
-- Seeming randomness in mathematics
-- aka  : 3x+1
-- video: https://www.youtube.com/watch?v=094y1Z2wpJg

local var num = math.random(1, 10000)
local var startnum = num
local var count = 0

print(string.format("\n=== Collatz conjecture. Using %d ===\n", num))

while true do
  if num % 2 == 0 then
    num = num / 2
    print(string.format("\027[91m%d\027[0m", num))
  else 
    num = (num * 3) + 1
    print(string.format("\027[1m%d\027[0m", num))
  end 

  if num == 1 then
    print(string.format("\nThe number %d reached 1 in %d steps, stopping to not loop forever.\n", startnum, count))
    break
  end
  count = count + 1;
end
