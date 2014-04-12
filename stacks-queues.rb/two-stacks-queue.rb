=begin	
Implement a queue with 2 stacks. 
=end

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
  end
end

class Stack
  attr_accessor :top
  def push(item)
    node = Node.new(item)
    node.next = @top
    @top = node
  end

  def pop
    data = @top.data
    @top = top.next
    data
  end

  def empty?
    top.nil?
  end
end

class Queue
  attr_reader :stack_enqueue, :stack_dequeue
  def initialize
    @stack_enqueue = Stack.new
    @stack_dequeue = Stack.new
  end

  def enqueue(item)
    @stack_enqueue.push(item)
  end

  def dequeue
    if @stack_dequeue.empty?
      until @stack_enqueue.empty?
        top = @stack_enqueue.pop
        @stack_dequeue.push(top)
      end
    end
    @stack_dequeue.pop
  end
end

queue = Queue.new

items = [1,2,3,4,5]
items.each do |item|
  queue.enqueue(item)
end

p queue.dequeue == 1
