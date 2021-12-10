# Collatz conjecture
# Seeming randomness in mathematics
# aka  : 3x+1
# video: https://www.youtube.com/watch?v=094y1Z2wpJg

num = rand(10000)
startnum = num
count = 0

puts "\n=== Collatz conjecture. Using #{startnum} ===\n"

loop do
  if num.even?
    num = num / 2
    puts "\033[91m#{num}\033[0m"
  else  
    num = (num * 3) + 1
    puts "\033[1m#{num}\033[0m"
  end

  count += 1
  break if num == 1
end

puts "\nThe number #{startnum} reached 1 in #{count} steps, stopping to not loop forever.\n"
