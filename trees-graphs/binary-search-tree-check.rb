=begin
Given a binary tree, check whether it’s a binary search tree or not.

BST definition: Left subtree is smaller than node, right subtree is greater than node. 
	
=end

class Node
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end
end


def is_bst?(root)
  return true unless root
  return false if (root.left && (root.left.data > root.data))
  return false if (root.right && (root.right.data < root.data))
  is_bst?(root.left) && is_bst?(root.right)
end

# True example: 8-3-10-1-6-9-14

node1 = Node.new(1)
node6 = Node.new(6)

node9 = Node.new(9)
node14 = Node.new(14)

node3 = Node.new(3)
node3.left = node1
node3.right = node6

node10 = Node.new(10)
node10.left = node9
node10.right = node14

node8 = Node.new(8)
node8.left = node3
node8.right = node10

p is_bst?(node8) #== true

# False example: 2-5-7

node5 = Node.new(5)
node7 = Node.new(7)
node2 = Node.new(2)

node2.left = node5
node2.right = node7

p is_bst?(node2) #== false
