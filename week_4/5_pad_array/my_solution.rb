# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

## Minumin size, non-negative integer and optional pad value

# What is the output? (i.e. What should the code return?)

## For #pad, the output is a copy of self that's padded with the value a minimum number of times 
## The output is the same for #pad! except that there is no copy of self made before the array is padded

# What are the steps needed to solve the problem?

## 1. Define class array 
## 2. Define two methods within class array, #pad and #pad!
## For #pad! ##
## 3. Set variable x equal to the value of the min_size argument - self.count
##    /\ This will result in the array being padded with the difference of min_size - number of elements in array 
##    /\ So that we get [1,2,3].pad(5) #=> [1,2,3,nil,nil] instead of [1,2,3,nil,nil,nil,nil,nil]
## 4. Make a loop that will push pad value into self the number of times as defined by the variable x 
## 5. Return self (output - new padded array)
## For #pad ## 
## Create copy of self so that method acts non-destructively 
## Follow step 3 
## Push pad value into copy of self x number of times 
## 6. End methods and class 


# 2. Initial Solution

# class Array
  
#   def pad!(min_size, value = nil) 
#     x = min_size - self.count
#     x.times do
#       self << value  
#     end  
#     self
#   end 

#   def pad(min_size, value = nil) # define non-destructive method #pad - accepts min_size and value
#     padded_copy = self.clone  # variable set to a copy of self
#     x = min_size - self.count # x = the difference of min_size and the length of self 
#     x.times do 
#       padded_copy  << value 
#     padded_copy 
#   end 
# end  

#   def pad(min_size, value = nil) # value is set to nil by default so that if no other value is given, the array is padded with "empty cells"
#     padded_copy = self.clone
#     x = min_size - self.count # so that the array is only padded with the difference of array#count and min_size 
#     x.times do # do the following the difference of /\ number of times
#       padded_copy  << value # appends the array with the value given or nil 
#     end # ends loop 
#     padded_copy # returns padded array
#   end # ends the method 
# end  



# 3. Refactored Solution


class Array
  
  def pad!(min_size, value = nil) 
    x = min_size - self.count
    x.times do
      self << value  
    end  
    return self # not sure if it is prefered to leave in return in return statements or write them without...I like leaving them in for now.
  end 

  def pad(min_size, value = nil)  
    padded_copy = self.clone 
    x = min_size - self.count 
    x.times do 
      padded_copy  << value 
    end
    return padded_copy # moved the return statement to a new line 
  end 
end  


# 4. Reflection 

# I tried to refactor this so that my pad method called #pad! on a copy of self but, it didn't pass the specs when I tried that. 
# I might come back and play around with that idea - I feel like there's definitely a way to do that but I'm not sure if that would 
# require instance variables. 

# This was a great way to wrap my head around why I would use a class here. Being able to call self in order to refer to some array 
# is really helpful and easy. 

# I can't seem to identify anything else to refactor except to come back and change my strategy all together. 
#
#
#