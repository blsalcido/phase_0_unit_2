# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

## #total: array of integers 
## #sencence_maker: array of strings and/or numbers

# What is the output? (i.e. What should the code return?)

## #total: sum of array elements 
## #sentence_maker: String with first element capitalized and a period added to the end

# What are the steps needed to solve the problem?

## 1. Define method total - accepts array of integers 
## 2. Use built-in ruby method to add elements together
## 3. Define method sentence_maker - accepts array of strings or integers 
## 4. Remove string syntax ("" and ,) and separate array elements with a single space 
## 5. Capitalize the first element of the array sentence 
## 6. Push a period to the end of the array sentence
## 7. End all methods 

# 2. Initial Solution

def total(nums)
  nums.inject(:+)
end

def sentence_maker(str_or_num)
  str_or_num.join(" ").capitalize << "."
end


# 3. Refactored Solution


def total(nums)
  nums.inject(:+)
end

def sentence_maker(str_or_num)
  str_or_num.join(" ").capitalize << "."
end

   	

puts total([1,2,3]) #=> 6 

puts sentence_maker(["i", "am", "loved"]) #=> I am loved.


# 4. Reflection 
# I don't really see anything to refactor. My naming conventions are proper and descriptive and the code 
# is DRY and the strategy is easy to understand. I added a bit of test code but, that's all. 
# 
# Nice warmup for the more difficult challenges this week. I'd feel a bit verbose if I elaborated any 
# further on this. This was simple and straight forward, not much else to say. 
#
#