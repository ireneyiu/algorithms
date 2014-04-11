=begin

By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two.

For example, the first ten Fibonacci numbers are:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34
Write a function that accepts a number and returns the number at that position in the fibonnaci sequence.

=end

def fibonacci(n, prev=0, current=1)
  return prev if n == 0
  fibonacci(n-1, current, prev+current)
end

p fibonacci(1) #== 1
p fibonacci(5) #== 5
p fibonacci(13) #== 223