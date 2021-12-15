// Collatz conjecture
// Seeming randomness in mathematics
// aka  : 3x+1
// video: https://www.youtube.com/watch?v=094y1Z2wpJg

var util = require('util');
var num = Math.floor(Math.random() * 10001);;
var startnum = num;
var count = 0;

console.log(util.format("\n=== Collatz conjecture. Using %d ===\n", num));

while(true) {
  if(num % 2 == 0) {
    num = num / 2;  
    console.log(util.format("\033[91m%d\033[0m",num));
  } else {
    num = (num *3) + 1;
    console.log(util.format("\033[1m%d\033[0m",num));
  }

  if(num == 1) {
    console.log(util.format("\nThe number %d reached 1 in %d steps, stopping to not loop forever.\n", startnum, count));
    break;
  }
  count++;
}
