=begin
Write a function that accepts two parameters, a parent and a child string.
Determine how many times the child string - or an anagram of the of the child string - appears in the parent string.
There is a solution which can be done in near instant time.

Pseudocode:
- Iterate through parent string in child.length chunks
- Compare chunk.downcase against child.downcase
- Increment count if they are equal
- Return count
=end

def num_anagrams(parent, child)
  count = 0
  letters = child.chars.sort.join("").downcase
  chunk_size = child.length
  (parent.length - chunk_size).times do |i|
    count += 1 if (parent[i...(i + chunk_size)].chars.sort.join("").downcase == letters)
  end
  count 
end

p num_anagrams('AdnBndAndBdaBn', 'dAn') #== 4
p num_anagrams('AbrAcadAbRa', 'cAda') #== 2