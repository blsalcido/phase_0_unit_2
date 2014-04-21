# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
  
  An integer 
  
# What is the output? (i.e. What should the code return?)

  A sting of numbers that are separated by commas every three numbers 

# What are the steps needed to solve the problem?

  # 1. Define a method that accepts an integer as an argument 
  # 2. Separate all numbers of the integer so that they can be addressed individually 
  # 3. Reverse the order of the separated numbers so that the commas end up in the right place 
  #   (for example, NOT 123,456,789,0 but, 1,234,567,890)
  # 4. Insert a comma every three digits as long as the digit is followed by another digit 


# 2. Initial Solution

def separate (integer) 
  integer_array = [ ] << integer.to_s 
  integer_array.split(//).reverse.each_slice(3) {|slice| array << slice } 
  integer_array.each do |x| 
    integer_array << [","]
  end 
  integer_array.delete_at(new_array.length - 1)
  integer_array.reverse.join
end  


# 3. Refactored Solution



# 4. Reflection 
