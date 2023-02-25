// Collatz conjecture
// Seeming randomness in mathematics
// aka  : 3x+1
// video: https://www.youtube.com/watch?v=094y1Z2wpJg

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  // magic random stuffz
  time_t t;
  srand((unsigned) time(&t));
  int num = rand() % (10000 + 1 - 0) + 0;
  
  int startnum = num;
  int count = 0;
  char str[80];
  
  sprintf(str, "\n=== Collatz conjecture. Using %d ===", startnum);
  puts(str);
  
  while(1) {
    if((num % 2) == 0) {
      num = num / 2;
      sprintf(str, "\033[91m%d\033[0m", num);
      puts(str);
    } else {
      num = (num * 3) + 1;
      sprintf(str, "\033[1m%d\033[0m", num);
      puts(str); 
    }
    
    count++;
    if(num == 1)
      break;
  }
  sprintf(str, "\nThe number %d reached 1 in %d steps, stopping to not loop forever.\n", startnum, count);
  puts(str);
}
