// Collatz conjecture
// Seeming randomness in mathematics
// aka  : 3x+1
// video: https://www.youtube.com/watch?v=094y1Z2wpJg

import java.util.Random;

class conjecture {
  public static void main(String[] args) {
    Random rand = new Random();
    int num = rand.nextInt(10000);
    
    int startnum = num;
    int count = 0;
    
    String str = String.format("\n=== Collatz conjecture. Using %d ===", startnum);
    System.out.println(str); 

    while(true) {
      if(num % 2 == 0) {
        num = num / 2;
        System.out.println(String.format("\033[91m%d\033[0m", num));
      } else {
        num = (num * 3) + 1;
        System.out.println(String.format("\033[1m%d\033[0m", num));
      }
      
      count++;

      if(num == 1) {
        break;
      }
    }
    System.out.println(String.format("\nThe number %d reached 1 in %d steps, stopping to not loop forever.\n", count, num));
  }
}
