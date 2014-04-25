# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

## An array of integers

# What is the output? (i.e. What should the code return?)

## A string that corresponds to the average of the array of integers based on set conditions

# What are the steps needed to solve the problem?

## 1. Define #get_grade - accepts an array of integers
## 2. Set variable equal to the average of the array of integers
## 3. Set conditional statements so that letter grades that correspond to the average of the argument will be returned 
## 4. End the branch and method 

# 2. Initial Solution
# def get_grade(average)
#   avg = average.inject{ |sum, el| sum + el }.to_f / average.count # This block iterates over the array adding elements together then dividing them by the number of elements to find their average.
#   
#   if avg >= 90                                                    # The purpose of #to_f is to make sure it will return the correct answer if the result of the averaging is a decimal. Sum represents the sum of all elements before the next element to be added to the total to be divided.   
#     return "A"     
#   elsif avg >= 80 
#     return "B"
#   elsif avg >= 70
#     return "C"
#   elsif avg >= 60
#     return "D"
#   else avg < 60
#     return "F"
#   end
# end


# 3. Refactored Solution


def get_grade(average)
  avg = average.inject{ |sum, el| sum + el }.to_f / average.count	
  
  case avg
  
  when 90..100
    "A"
  when 80..90
    "B"
  when 70..80
    "C"
  when 60..70
    "D"
  when 0..60
    "F"
  else
    "What? Try again."
  end
end



# 4. Reflection 
#
# So, I know I could have shown more continuity between my initial and refactored code but, I really just 
# didn't see much to alter. It didn't seem particularly DRY because I was repeating some of the "skeleton"
# of the code (I had to write if and elsif a lot and the little >= symbols, etc.) quite a bit but, then, 
# I'm not sure how to avoid that without researching heavily and I want to move on to other challenges. 
# So, I decided to change it up a little and make a case avg that required slightly less typing and I think
# it's a little more readable overall because I don't have to glare at it to make sure the operators are 
# correct because it doesn't have any. The .. (range) looks cleaner to me. I added an else condition so 
# that I would get a message if an inapplicable number was passed in as an argument.
#
#
#