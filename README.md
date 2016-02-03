#Objective
Write a program that prints out a multiplication table of the first 10 prime numbers.
The program must run from the command line and print one table to STDOUT.
The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

## Synopsis
```
git clone git@github.com:gambaroff/primes_multiplication_table.git
cd primes_multiplication_table
ruby lib/print_table.rb
ruby lib/print_table.rb -n <number of primes>
ruby lib/print_table.rb --count <number of primes>
```

## Caveats
- You can pass -n to the above command to see a mutiplicaton table of any number of primes, but the table won't be as nicely formated as it is for the first 10 primes unless you have a really wide screen.

## Complexity
- I have an outer and an inner loops in my PrimeExtractor class.

```primes``` method contains on outer loop with a single iteration, and the iterative variable is incrementing linearly, so the complexity is O(n) e.g. for(i=0;i<n;i++) //O(n).

```prime?``` method contains an inner loop, which iterates only to the square root of the iterative variable and is not incremented, then the complexity is O(log n).

In conclusion, the overall complexity of this code is O(nlogn)

Reference: [Quora](https://www.quora.com/What-are-some-easy-ways-to-understand-and-calculate-the-time-complexity-of-algorithms)