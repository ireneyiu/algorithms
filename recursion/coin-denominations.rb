=begin

Write a function that, given:
an amount of money
a list of coin denominations
computes the number of ways to make amount of money with coins of the available denominations.

Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:

1¢, 1¢, 1¢, 1¢
1¢, 1¢, 2¢
1¢, 3¢
2¢, 2¢

=end

def num_combinations(amount, denominations)
  return 1 if amount == 0
  return 0 if amount < 0 || denominations.length == 0

  current_coin = denominations[0]
  other_coins = denominations[1..-1]

  num_combos = 0

  while amount >= 0
    num_combos += num_combinations(amount, other_coins)
    amount -= current_coin
  end

  num_combos
end

p num_combinations(4, [1,2,3])