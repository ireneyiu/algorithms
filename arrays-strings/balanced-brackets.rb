=begin
Write a function that accepts a string consisting entiring of brackets ([](){}) and returns whether it is balanced.
Every "opening" bracket must be followed by a closing bracket of the same type.
There can also be nested brackets, which adhere to the same rule.	
=end

BRACKETS = {
  '(' => ')',
  '{' => '}',
  '[' => ']'
}

def is_balanced?(brackets)
  stack = []
  brackets.chars.each do |char|
    if BRACKETS[char]
      stack << char 
    else
      return false if stack.empty?
      last = stack.pop
      return false unless BRACKETS[last] == char
    end
  end
  true
end

p is_balanced?('()[]{}(([])){[()][]}') #== true
p is_balanced?('())[]{}') #== false
p is_balanced?('[(])') #== false