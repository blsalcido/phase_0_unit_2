# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(label)
      raise ArgumentError.new("something else") if label == [] 
      @labels = label 
  end
  
  def sides
    @labels.length
  end
  
  def roll
    @labels.sample
  end
end


die = Die.new(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']) #initialze with an array
die = Die.new([]) #to trigger the empty array error message
puts die.sides #puts the lenth of the array
puts die.roll #puts the sample of the array



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
