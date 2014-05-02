# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
      raise ArgumentError if sides <1
        @sides = sides 
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..@sides)
  end
end


die = Die.new(6)
puts die.sides == 6 # returns true
puts die.roll == (1..6) # returns true or false


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 