<?php
# Collatz conjecture
# Seeming randomness in mathematics
# aka  : 3x+1
# video: https://www.youtube.com/watch?v=094y1Z2wpJg

$num = rand(0, 10000);
$startnum = $num;
$count = 0;

printf("\n=== Collatz conjecture. Using %d ===\n\n", $num); 

while(True) {
  if($num % 2 == 0) {
    $num = $num / 2;
    printf("\033[91m%d\033[0m\n", $num);
  } else {
    $num = ($num * 3) + 1;
    printf("\033[1m%d\033[0m\n", $num);
  }

  if($num == 1) {
    printf("\nThe number %d reached 1 in %d steps, stopping to not loop forever.\n", $startnum, $count);
    break;
  }
  $count++;
}

?>
