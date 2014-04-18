//Write an extended stack class that has a function getLargest() for returning the largest element in the stack.

function Node(value) {
	this.value = value;
}

function Stack() {
  this.largest = Number.MIN_VALUE;
}

Stack.prototype = {
  push: function(item) {
    var node = new Node(item);
    if (this.top) {
      node.next = this.top;
    }
    this.largest = Math.max(this.largest, node.value);
    node.largest = this.largest;
    this.top = node;
  },
  pop: function() {
    var data = this.top.data;
    this.top = this.top.next;
    this.largest = this.top.largest;
    return data;
  },
  peek: function() {
    return this.top.data;
  },
  getLargest: function() {
    return this.largest;
  }
};

var stack = new Stack();
stack.push(5);
stack.push(8);
stack.push(1);
stack.push(3);
stack.push(11);

console.log(stack.getLargest());

stack.pop();

console.log(stack.getLargest());
