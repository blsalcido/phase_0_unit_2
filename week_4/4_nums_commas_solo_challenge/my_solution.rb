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

def separate_comma(integer)        # Defines method separate_comma - accepts integer as argument
  integer_string = integer.to_s    # Variable integer string is equal to integer converted to string of numbers
  split_integer_array = []         # Empty array - will push split numbers into this array 
  integer_string.split(//).reverse.each_slice(3) {|x| split_integer_array << x } #Splits string into individual digits, reverses the string order, groups digits by 3, and pushes each digit into an array
  
  separated_with_commas = [ ]      # New empty array that will contain numbers split with commas
  split_integer_array.each do |x|  # Says, "Take each element in the split_integer_array and...
    separated_with_commas << x     # ...push them into the array separated_with_commas"
    separated_with_commas << [ "," ] # pushes commas in between the groups of 3 digits.
  end # Ends the loop
  
  separated_with_commas.delete_at(separated_with_commas.length - 1) # Deletes the extra comma in front of the string so we don't get ",1,234,567,890", for example
  separated_with_commas.flatten.reverse.join # See reflection for more on #flatten. This line takes the separated_with_commas array, "flattens" its elements, reverses their order, and joins the contents together 
end # Ends the method 
 

puts separate_comma(1234567890)

## Driver Code ## 

puts separate_comma(1234567890) == "1,234,567,890" #=> true 
puts separate_comma(1234567890) == ",1,234,567,890" #=> false


# 3. Refactored Solution



# 4. Reflection 
