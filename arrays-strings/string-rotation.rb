=begin
If we imagine that s2 is a rotation of si, then we can ask what the rotation point is. For
example, if you rotate waterbottle after wat, you get erbottlewat. In a rotation, we
cut si into two parts, x and y, and rearrange them to get s2.
=end

def is_rotation?(s1, s2)
  s1.length == s2.length ? (s1+s1).include?(s2) : false
end

p is_rotation?("waterbottle", "erbottlewat")