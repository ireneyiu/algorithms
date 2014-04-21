# 9.1 A child is running up a staircase with n steps, and can hop either 1 step, 2 steps,
# or 3 steps at a time. Implement a method to count how many possible ways the
# child can run up the stairs.

# Pseudocode: 
# Return 1 if the num_steps remaining is 0
# Take the first num_step in the types array and see how many times it can go into num_steps
# Repeat for the remainder

def num_step_combinations(num_steps, types)
  return 1 if num_steps == 0
  return 0 if num_steps < 0 || types.length == 0
  curr_step = types[0]
  other_steps = types[1..-1]
  num_combos = 0
  while num_steps > 0
    num_combos += num_step_combinations(num_steps - curr_step, other_steps)
    num_steps -= curr_step
  end
  num_combos
end

def count_ways(num_steps, map = [])
  return 0 if num_steps < 0
  return 1 if num_steps == 0
  return map[num_steps] if map[num_steps] && map[num_steps] > -1
  map[num_steps] = count_ways(num_steps-1) + count_ways(num_steps-2) + count_ways(num_steps-3)
  return map[num_steps]
end

p num_step_combinations(5, [1,2,3])
p count_ways(5)
