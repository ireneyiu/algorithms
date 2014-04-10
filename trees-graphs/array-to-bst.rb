=begin
Given a sorted (increasing order) array with unique integer elements, write an
algorithm to create a binary search tree with minimal height.	

Example

Array:
[0, 1, 2, 3, 4, 5, 6]

Tree:
    3 
  1   5
0  2 4 6

=end

require 'set'

class Node
  attr_accessor :data, :left, :right
  
  def initialize(data)
    @data = data
  end

end

def array_to_bst(array, low=0, high=array.length-1)
  return if (high - low)/2 == 0
  mid = (high - low)/2 + low
  node = Node.new(array[mid])

  left = array[(mid-low)/2]
  right = array[(high-mid)/2 + mid]

  node.left = array_to_bst(array, low, mid) if left
  node.right = array_to_bst(array, mid, high) if right
end

p array_to_bst([0, 1, 2, 3, 4, 5, 6])