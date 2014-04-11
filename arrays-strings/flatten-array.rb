=begin

Write a function that accepts a multi dimensional array and returns a flattened version.

flatten([1, 2, [3, [4], 5, 6], 7]) // [1, 2, 3, 4, 5, 6, 7]

Pseudocode:
- Initialize empty array for results
- Loop through each element in input array
- If the element is a num, add to results array
- Otherise, recursively go through children until hit single element

=end



def flatten(elements, results=[])
  return elements unless elements.is_a?(Array)
  elements.each do |element|
    results << flatten(element, results)
  end
  results
end

p flatten([1, 2, [3, [4], 5, 6], 7]) #== [1, 2, 3, 4, 5, 6, 7]