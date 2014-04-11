=begin
	
Factorial of any number n is defined as the multiplication of numbers from one to the given number.

 n! = 1 x 2 x 3 x 4 x ........ x n 
	
=end

def factorial(n)
	return 1 if n == 1
	n * factorial(n-1)
end

def factorial_tail(n, total=1)
  return total if n == 1
  factorial_tail(n-1, total*n)
end

p factorial(4) #== 24
p factorial_tail(4) #== 24

