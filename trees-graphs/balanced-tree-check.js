// Check if a binary tree is balanced.

// Definition: Heights of the subtree never differ by more than one

// Pseudocode:
// Calculate height on each node
// If node is null, return height of 0
// On each node, check height difference
// If the height difference is greater than 1, return -1


function Node(data) {
	this.data = data;
}

function isBalanced(node) {
  return getHeight(node) !== -1;
}

function getHeight(node) {
  if (!node) {
    return 0;
  }
  
  var leftHeight = getHeight(node.left);
  if (leftHeight === -1) {
    return -1;
  }

  var rightHeight = getHeight(node.right);
  if (rightHeight === -1) {
    return -1;
  }

  if (Math.abs((leftHeight - rightHeight) > 1)) {
    return -1;
  }

  return Math.max(leftHeight, rightHeight) + 1;
}

node10 = new Node(10);
node5 = new Node(5);
node20 = new Node(20);
node3 = new Node(3);
node1 = new Node(1);

node10.left = node5;
node10.right = node20;
node5.left = node3;
node3.left = node1;

console.log(isBalanced(node10));