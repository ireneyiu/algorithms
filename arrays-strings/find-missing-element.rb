=begin
	
There is an array of non-negative integers.
A second array is formed by shuffling the elements of the first array and deleting a random element.
Given these two arrays, find which element is missing in the second array.
	
Pseudocode:
- Iterate over 2nd array
- Set the total number of occurences


=end

def find_missing_element(array1, array2)
  elements = {}
  array2.each do |num|
    elements[num] = 0 unless elements[num]
    elements[num] += 1
  end

  array1.each do |num|
    return num unless elements[num]
    elements[num] -= 1
    return num if elements[num] < 0
  end
end

def find_missing_element_bitwise(array1, array2)
  result = 0
  (array1 + array2).each do |num|
    result ^= num
  end
  result
end


p find_missing_element([1,2,3,4,5], [1,2,3,4]) #== 5
p find_missing_element_bitwise([1,2,3,4,5], [1,2,3,4]) #== 5