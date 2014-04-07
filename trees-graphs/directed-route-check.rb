=begin

Given a directed graph, design an algorithm to find out whether or not there is a route between 2 nodes.

=end

class Node
  attr_accessor :data, :adjacent, :visited
  def initialize(data)
    @data = data
    @visited = false
  end
end

def has_route?(from, to)
  queue = []
  queue << from
  until queue.empty?
    node = queue.shift
    node.visited = true
    return true if node == to
    node.adjacent.each { |node| queue << node unless node.visited }
  end
  false
end