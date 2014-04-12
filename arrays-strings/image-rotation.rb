=begin
	
1.6 Given an image represented by an NxN matrix, where each pixel in the image is
4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
place?
	
=end

def rotate(matrix, n)
  (n/2).times do |layer| # start from outside layers, and we have n/2 layers
    first = layer
    last = n - 1 - layer
    first.upto(last-1) do |index|
      offset = index - first
      top = matrix[first][index]
      matrix[first][index] = matrix[last-offset][first] # left -> top
      matrix[last-offset][first] = matrix[last][last-offset] # bottom -> left
      matrix[last][last-offset] = matrix[index][last] # right -> bottom
      matrix[index][last] = top # top -> right
    end
  end
end

matrix = [[1,2,3,4], [5,6,7,8], [9, 10, 11, 12], [13, 14, 15, 16]]
rotate(matrix, 4)

p matrix[0][2] #== 5
p matrix[3][3] #== 4