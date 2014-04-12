class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
  end
end

class Queue
  attr_reader :first, :last

  def enqueue(item)
    node = Node.new(item)
    @first = node unless @first
    @last.next = node if @last
    @last = node
  end

  def dequeue
    data = @first.data
    @first = @first.next
    data
  end

  def empty?
    @first.nil?
  end
end

class Stack
  attr_reader :queue1, :queue2, :dequeue_from

  def initialize
    @queue1 = Queue.new
    @queue2 = Queue.new
  end

  def push(item)
    if @queue1.empty?
      until @queue2.empty?
        @queue1.enqueue(@queue2.dequeue)
      end
      @queue2.enqueue(item)
      @dequeue_from = @queue2
    else
      until @queue1.empty?
        @queue2.enqueue(@queue1.dequeue)
      end
      @queue1.enqueue(item)
      @dequeue_from = @queue1
    end
  end

  def pop
    @dequeue_from.dequeue
  end
end

stack = Stack.new
items = [1,2,3,4,5]
items.each do |item|
  stack.push(item)
end

p stack.pop #== 5