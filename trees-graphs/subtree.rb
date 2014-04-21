=begin
You have two very large binary trees: Tl, with millions of nodes, and T2, with
hundreds of nodes. Create an algorithm to decide if T2 is a subtree of Tl.
A tree T2 is a subtree of Tl if there exists a node n in Tl such that the subtree of
n is identical to T2. That is, if you cut off the tree at node n, the two trees would
be identical.

Example:

Tree
          20
    10           30
  5   15      25    40
1  8 11 18  22 28 35  45

Subtrees:

  30
24  40

  15
11  18


Pseudocode:
- Recursively call subtree method until the data matches
- If it matches, continue traversing until we hit null on both trees => return true
- If the data doesn't match while traversing the subtree, continue going down tree
=end

class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end
end


def contains_tree?(tree, subtree)
  return true unless subtree
  traverse(tree, subtree)
end

def traverse(tree_node, subtree_node)
  return false unless tree_node
  if tree_node.data == subtree_node.data
    return true if is_match?(tree_node, subtree_node)
  end
  traverse(tree_node.left, subtree_node) || traverse(tree_node.right, subtree_node)
end

def is_match?(tree_node, subtree_node)
  return true unless tree_node && subtree_node
  return false if tree_node.nil? || subtree_node.nil?
  return false unless tree_node.data == subtree_node.data
  is_match?(tree_node.left, subtree_node.left) && is_match?(tree_node.right, subtree_node.right)
end

node1 = Node.new(1)
node8 = Node.new(8)
node5 = Node.new(5)
node5.left = node1
node5.right = node8

node11 = Node.new(11)
node18 = Node.new(18)
node15 = Node.new(15)
node15.left = node11
node15.right= node18

node10 = Node.new(10)
node10.left = node5
node10.right = node15

node22 = Node.new(22)
node28 = Node.new(28)
node25 = Node.new(25)
node25.left = node22
node25.right = node28

node35 = Node.new(35)
node45 = Node.new(45)
node40 = Node.new(40)
node40.left = node35
node40.right= node45

node30 = Node.new(30)
node30.left = node25
node30.right = node40

node20 = Node.new(20)
node20.left = node10
node20.right = node30

node8 = Node.new(8)
node30 = Node.new(30)
node15dupe = Node.new(15)
node15dupe.left = node8
node15dupe.right = node30

p contains_tree?(node20, node30) #== true
p contains_tree?(node20, node15) #== true
p contains_tree?(node20, node15dupe) #== false



