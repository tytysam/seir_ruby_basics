# CHALLENGE:

# Given an array of integers, return indices of two elements in the array such 
# that their values add up to a specific target. You may assume that each input 
# would have exactly one solution.

#################################################################################

# Example

# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9, return [0, 1].

#################################################################################

# Given an array of integers...
# Find two numbers inside the nums array that add up to the TARGET (in the example case, target = 9)
# Return the index (NOT the numbers themselves)


# PSEUDO
# Create a new hash
# i will be the indices
# values will be our integers in nums
  # check if difference exists within the "checked" hash
  # IF it DOES exist, then return that hash pointing to our indices
  # ELSE if it DOESN'T exist within the hash, then set checked[value] equal to the indices

nums = [20, 71, 110, 15]
target = 125

def twoSums(nums, target)
  checked = {}
  nums.each_with_index do |value, i|
    difference = target - value

    if checked[difference]
      return [checked[difference], i]
    else 
      checked[value] = i
    end
  end

end

p twoSums(nums, target)

# Big-O ==> O(n) time complexity