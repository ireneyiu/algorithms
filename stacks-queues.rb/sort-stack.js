// Write a program to sort a stack in ascending order. You should not make any assumptions about how the stack is implemented.
// The following are the only functions that should be used to write this program: push | pop | peek | isEmpty.

function Node(data) {
  this.data = data;
  this.next = null;
}

function Stack() {
	this.top = null;
}

Stack.prototype = {
  push: function(item) {
    var node = new Node(item);
    if (this.top) {
      node.next = this.top;
    }
    this.top = node;
  },
  pop: function() {
    var data = this.top.data;
    this.top = this.top.next;
    return data;
  },
  peek: function() {
    return this.top.data;
  },
  isEmpty: function() {
    return !this.top;
  },
  sort: function() {
    var ordered = new Stack();
    while (!this.isEmpty()) {
      var tmp = this.pop();
      while (!ordered.isEmpty() && (ordered.peek() > tmp)) {
        this.push(ordered.pop());
      }
      ordered.push(tmp);
    }
    return ordered;
  }
};

var stack = new Stack();
stack.push(2);
stack.push(4);
stack.push(5);
stack.push(3);
stack.push(1);

console.log(stack.sort());
