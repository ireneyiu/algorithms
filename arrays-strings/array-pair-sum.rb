=begin

Given an integer array, output all pairs that sum up to a specific value k.
Consider the fact that the same number can add up to k with its duplicates in the array.

For example the array is [1, 1, 2, 3, 4] and the desired sum is 4.
Should we output the pair (1, 3) twice or just once?
Also do we output the reverse of a pair, meaning both (3, 1) and (1, 3)?
Let’s keep the output as short as possible and print each pair only once.
So, we will output only one copy of (1, 3).
Also note that we shouldn’t output (2, 2) because it’s not a pair of two distinct elements.

=end

def pairs_by_sum(sum, array)
  pairs = []
  array.each_with_index do |element, index|
    (i + 1).upto(array.length-1) do |j|
      pairs << [array[i], array[j]] if array[i] + array[j] == sum
    end
  end
  pairs
end

p pairs_by_sum(10, [3, 4, 5, 6, 7]) #== [ [6, 4], [7, 3] ]
p pairs_by_sum(8, [3, 4, 5, 4, 4]) #== [ [3, 5], [4, 4], [4, 4], [4, 4] ]