=begin
	
Check if a binary tree is balanced.

Definition: Heights of the subtree never differ by more than one
	
=end

def is_balanced?(root)
  (get_height(root.left) - get_height(root.right)).abs <= 1
end

def get_height(node)
  return 0 unless node
  return (1 + Math.max[get_height(node.left), get_height(node.right)])
end