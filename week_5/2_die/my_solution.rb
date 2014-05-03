# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: array of strings 
# Output: random string 
# Steps:

# 1. initialize the class
# 2. raise error if an empty array is passed in
# 3. define #sides - it should determine the length of the array of strings
# 4. define #roll - it should return a random sample from array of strings



# 3. Initial Solution

# class Die
#   def initialize(label)
#       raise ArgumentError.new("something else") if label == [] 
#       @labels = label 
#   end
  
#   def sides
#     @labels.length
#   end
  
#   def roll
#     @labels.sample
#   end
# end


# 4. Refactored Solution

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


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']) #initialze with an array
die = Die.new([]) #to trigger the empty array error message
puts die.sides #puts the lenth of the array
puts die.roll #puts the sample of the array





# 5. Reflection 

# There was so much similarity between this challenge and the Die1 challenge that it was really short and 
# simple for me. I am struggling to find aything to refactor even though I finished this a few days ago, 
# moved on to other challenges, and came back to this. I think it's already tight and I am really uncertain 
# what Icould do differently. I don't know if that's a good thing or not. 
#
#
