=begin
Given an integer array, one element occurs even number of times and all others have odd occurrences.
Find the element with even occurrences.
=end

def find_even_occurence(array)
  occurences = {}
  array.each do |element|
  	occurences[element] = 0 unless occurences[element]
  	occurences[element] += 1
  end
  occurences.select{|k,v| v % 2 == 0}.keys.shift
end

p find_even_occurence([1,3,4,5,2,1,1,2]) #== 2
p find_even_occurence([2,5,5]) #== 5