=begin

Write a function that accepts four arguments.
The first two arguments are the size of the grid (h x w), filled with ascending integers from left to right, top to bottom, starting from 1.
The next two arguments are the starting positions, the row (r) and column (c).

Return an array of integers obtained by spiralling outward anti-clockwise from the r and c, starting upward.
	
f(5, 5, 3, 3) // [ 13, 8, 7, 12, 17, 18, 19, 14, 9, 4, 3, 2, 1, 6, 11, 16, 21, 22, 23, 24, 25, 20, 15, 10, 5 ]

f(2, 4, 1, 2) // [ 2, 1, 5, 6, 7, 3, 8, 4 ]

Notes:

Number of elements on each direction turn:
1, 1, 2, 2, 3, 3, 4, 4

That is,
Top 1, left 1, bottom 2, right 2, top 3, left: 3, bottom: 4, right: 5, top: 5

... Until number of elements equal to height * width

=end

def spiral(height, width, row_start, col_start)
  spiral_array = []
  num_elements = 1
  direction = -1

  element = ((row_start-1) * width) + col_start # starting position
  spiral_array << element
  until spiral_array.length == height * width
    num_elements.times do |index| # vertical direction
      element += (direction * width)
      spiral_array << element if element > 0
    end

    num_elements.times do |index| # horizontal direction
      element += direction
      spiral_array << element if element > 0
    end
    
    num_elements += 1
    direction *= -1
  end
  spiral_array
end

p spiral(5, 5, 3, 3) == [ 13, 8, 7, 12, 17, 18, 19, 14, 9, 4, 3, 2, 1, 6, 11, 16, 21, 22, 23, 24, 25, 20, 15, 10, 5 ]
p spiral(2, 4, 1, 2) == [ 2, 1, 5, 6, 7, 3, 8, 4 ]