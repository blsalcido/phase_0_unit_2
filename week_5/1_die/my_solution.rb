# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: integer 
# Output: random number 
# Steps:

# initialize class
# return error if sides < 1 
# write a method #sides that returns the integer passed in
# write a method #roll that returns a random number between 1 and the value of sides 

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



# 4. Refactored Solution

  class Die
  def initialize(sides)
    raise ArgumentError.new("A die cannot have less than 1 side") if sides <1
      @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    rand (1..@sides)
  end
end
 

# 1. DRIVER TESTS GO BELOW THIS LINE


die = Die.new(6)
puts die.sides == 6 # returns true
puts die.roll == (1..6) # returns true or false




# 5. Reflection 

# There wasn't much to refactor here and I really missed that on this challenge. I changed the argument 
# error to a customized message which is always fun. Stared at this for a few hours and still don't really 
# feel like there was an "ah-hah" moment but, maybe that's just beause it was a really straight-forward 
# challenge for me. I am kind of wondering why the Pseudocode and steps are two different things to respond 
# to on the gist template. I think of Pseudocode as the steps to solve a problem so...
#
#