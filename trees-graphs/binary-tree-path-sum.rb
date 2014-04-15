=begin
4.9 You are given a binary tree in which each node contains a value. Design an algorithm
to print all paths which sum to a given value. The path does not need to
start or end at the root or a leaf.
=end

class Node
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end
end

def paths_by_sum(node, sum, path=[], level=0)
  return unless node
  path << node.data
  total = 0
  level.downto(0) do |i|
    total += path[i]
    p path[i..level] if total == sum
  end

  paths_by_sum(node.left, sum, path, level + 1)
  paths_by_sum(node.right, sum, path, level + 1)

  path.delete_at(level)
end

node4 = Node.new(4)
node5 = Node.new(5)

node1 = Node.new(1)
node2 = Node.new(2)
node2.left = node4
node2.right = node5

node5again = Node.new(5)

node1.left = node2
node1.right = node5again

paths_by_sum(node1, 6)
