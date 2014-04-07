=begin
    
Check if a binary tree is balanced.
Definition: Heights of the subtree never differ by more than one
    
=end

class Node
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end
end

def is_balanced?(root)
  (get_height(root.left) - get_height(root.right)).abs <= 1
end

def get_height(node)
  return 0 unless node
  return (1 + [get_height(node.left), get_height(node.right)].max)
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

p is_balanced?(node8) #== true

# False example: 2-5-nil-7

node5 = Node.new(5)
node7 = Node.new(7)
node2 = Node.new(2)

node2.left = node5
node5.left = node7

p is_balanced?(node2)