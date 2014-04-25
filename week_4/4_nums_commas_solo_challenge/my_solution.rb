# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
  
# An integer 
  
# What is the output? (i.e. What should the code return?)

# A sting of numbers that are separated by commas every three numbers 

# What are the steps needed to solve the problem?

  # 1. Define a method that accepts an integer as an argument 
  # 2. Separate all numbers of the integer so that they can be addressed individually 
  # 3. Reverse the order of the separated numbers so that the commas end up in the right place 
  #   (for example, NOT 123,456,789,0 but, 1,234,567,890)
  # 4. Insert a comma every three digits as long as the digit is followed by another digit 


# 2. Initial Solution

# def separate_comma(integer)        # Defines method separate_comma - accepts integer as argument
#   integer_string = integer.to_s    # Variable integer string is equal to integer converted to string of numbers
#   split_integer_array = []         # Empty array - will push split numbers into this array 
#   integer_string.split(//).reverse.each_slice(3) {|x| split_integer_array << x } #Splits string into individual digits, reverses the string order, groups digits by 3, and pushes each digit into an array
  
#   separated_with_commas = [ ]      # New empty array that will contain numbers split with commas
#   split_integer_array.each do |x|  # Says, "Take each element in the split_integer_array and...
#     separated_with_commas << x     # ...push them into the array separated_with_commas"
#     separated_with_commas << [ "," ] # pushes commas in between the groups of 3 digits.
#   end # Ends the loop
  
#   separated_with_commas.delete_at(separated_with_commas.length - 1) # Deletes the extra comma in front of the string so we don't get ",1,234,567,890", for example
#   separated_with_commas.flatten.reverse.join # See reflection for more on #flatten. This line takes the separated_with_commas array, "flattens" its elements, reverses their order, and joins the contents together 
# end # Ends the method 
 

# puts separate_comma(1234567890)

# ## Driver Code ## 

# puts separate_comma(1234567890) == "1,234,567,890" #=> true 
# puts separate_comma(1234567890) == ",1,234,567,890" #=> false


# 3. Refactored Solution

def separate_comma(integer)        
  integer_string = integer.to_s  # Declared variables at beginning of method
  split_integer_array = []       # /\

  return integer_string if integer_string.length <= 3 # Added this return statement for arguments less than 3 digits
  
  integer_string.split(//).reverse.each_slice(3) do |num_trio| # changed "counter" from x to num_trio becuase it's more descriptive 
    split_integer_array << num_trio # name change reflected here
    split_integer_array << "," # Don't know why I made this an array in the solution above, it should obviously just be a string 
  end 

  split_integer_array.delete_at(split_integer_array.length - 1) 
  split_integer_array.flatten.reverse.join  
end 

# 4. Reflection 
# The thing that really stands out to me about this challenge is that I'm not sure how to get rid of the need for 
# #flatten. I thought that having only one array would eliminate the need for flatten but, if I don't call it, I 
# get 1,432,765,098 for puts separate_comma(1234567890) in stead of 1,234,567,890. Highly suspect. 
# <.<
# >.>
#
# I've also been looking for away to avoid putting the extra comma in the begining of the separated number so that 
# I don't have to take it out later on in the code. I've tried several things but, I always get that scumbag extra
# comma. Rawrg.
#
# Overall I feel pretty good about this challenge. It's a huge relief when I pass all specs and understand why line
# by line. I think failing at my two aforementioned goals for this challenge is made easier for me to cope with 
# emotionally by the fact that I, at least, understand this well enough that if a solution were shown to me, I'd 
# be able to digest where I went wrong in my attempts to refactor with those two things in mind. I'm happy with this.
# I don't feel confused by anything and that's been my goal for everything in Phase 0.
#
#
#
#
#