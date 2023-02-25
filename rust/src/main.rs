
// Collatz conjecture
// Seeming randomness in mathematics
// aka  : 3x+1
// video: https://www.youtube.com/watch?v=094y1Z2wpJg

use rand::Rng;

fn main() {
  let mut rng = rand::thread_rng();
  let mut num = rng.gen_range(0..10000);
  let startnum = num;
  let mut count = 0; 

  println!("\n=== Collatz conjecture. Using {} ===", startnum);
  
  loop {
    if num % 2 == 0 {
      // Using hexadecimal escape characters because Rust doesn't 
      // support octal escape chars
      println!("\x1b[91m{}\x1b[0m", num);
      
      num /= 2;
    } else {
      println!("\x1b[1m{}\x1b[0m", num);
      num = (num * 3) + 1;
    }

    count += 1;
  
    if num == 1 {
      println!("\nThe number {} reached 1 in {} steps, stopping to not loop forever.\n", startnum, count);
      break;
    }
  }
}
