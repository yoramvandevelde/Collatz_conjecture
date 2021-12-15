// Collatz conjecture
// Seeming randomness in mathematics
// aka  : 3x+1
// video: https://www.youtube.com/watch?v=094y1Z2wpJg

package main
  
import (
  "fmt"
  "math/rand"
  "time"
)
  
func main() {
  // set random number and counter
  rand.Seed(time.Now().UnixNano())
  num := rand.Intn(10000)
  startnum := num
  count := 0

  // print header
  fmt.Println("\n=== Collatz conjecture. Using", startnum ,"} ===")

  for {
    if(num % 2 == 0) {
      num = num / 2
      fmt.Println("\033[91m", num, "\033[0m")
    } else {
      num = (num * 3) + 1
      fmt.Println("\033[1m", num, "\033[0m")
    }

    count++
    
    if(num == 1) {
      break
    }
  }
  
  // print footer
  fmt.Println("The number", startnum ,"reached 1 in", count ,"steps, stopping to not loop forever.\n")
}
