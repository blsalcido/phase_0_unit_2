# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. PSEUDOCODE
# 
# INPUT: Integers (answer, guess) 
# OUPUT: High, Low, Correct, True, False (all depending on whether the guess argument 
# matches the answer argument. 
# What are the steps to solve the problem?  Write them out in plain english as best you can.
# 
# 1. Define initialize, set local variable for the number I am looking for to an instance variable
# so I can use it later on in the program. (#initialize) 
# 2. Set conditions under which the program will return high, low, or correct when the argument 
# is passed in and checked against the number I am looking for. (#guess)
# 3. Set the argument that's passed in equal to the number I am looking for in a method  
# that will determin whether or not the result is true or false. (#solved?)


# 3. Initial Solution

class GuessingGame            # Creates class GuessingGame
  def initialize(answer)      # Defines method initialize. It accepts one argument (answer, an integer).
    @answer = answer.to_i     # Assigns instance variable @answer to the argument (answer, an integer).  
  end #Ends initialize.       # I used #to_i here(line 22) becuase I got several error messages in socrates when I was  
                              # first trying to solve the problem and I was trying different things to fix the errors. 
  def guess(guess)            # Defines method guess 
    @guess = guess            # Assigns instance variable @guess to the argument (guess,an integer).
      if guess > @answer      # Conditional statement: In the event that the argument passed in (guess) is greater than the 
        return :high          # number I'm looking for (answer), the program will return "high" as a response. 
      elsif guess == @answer  # Conditional statement: In the event that the guess is equal to the number I am looking for, 
        return :correct       # the program will return "correct". 
      elsif guess < @answer   # Conditional Statement: In the event that the guess is lower than the number I am looking for, 
        return :low           # the program will return "low". 
      end                     # Ends the if/else loop. 
  end                         # Ends the method guess. 
 
  def solved?                 # Defines the method solved? This method will verify whether or not the guess is correct. 
    if @guess == @answer      # Conditional statement: If the guess is equal to the number I am looking for (answer), 
        return true           # the program will return true. 
      elsif @guess != @answer # Conditional statement: In the event that the guess is not equal to the answer I am looking for
      return false            # the program will return false. 
    end                       # Ends the if/else loop. 
  end                         # Ends the method solved?. 
end                           # Ends the Class GuessingGame. 
 




# 4. Refactored Solution

class GuessingGame            # Creates class GuessingGame
  def initialize(answer)      # Defines method initialize. It accepts one argument (answer, an integer).
    @answer = answer          # Assigns instance variable @answer to the argument (answer, an integer).  
  end #Ends initialize.       # I used #to_i here(line 17) becuase I got several error messages in socrates when I was  
                              # first trying to solve the problem and I was trying different things to fix the errors. 
  def guess(guess)            # Defines method guess 
    @guess = guess            # Assigns instance variable @guess to the argument (guess,an integer).
      if guess > @answer      # Conditional statement: In the event that the argument passed in (guess) is greater than the 
        return :high          # number I'm looking for (answer), the program will return "high" as a response. 
      elsif guess == @answer  # Conditional statement: In the event that the guess is equal to the number I am looking for, 
        return :correct       # the program will return "correct". 
      elsif guess < @answer   # Conditional Statement: In the event that the guess is lower than the number I am looking for, 
        return :low           # the program will return "low". 
      end                     # Ends the if/else loop. 
  end                         # Ends the method guess. 
 
  def solved?                 # Defines the method solved? This method will verify whether or not the guess is correct. 
    @guess == @answer         # There is no need for an if/else loop. As I understand it, 
  end # Ends #solved?.        # verifying whether @guess matches @answer will automatically 
end                           # Ends the Class GuessingGame.




# 1. DRIVER TESTS GO BELOW THIS LINE

# play_game = GuessingGame.new(5) 
# play_game.guess(4) == low #=> true
# play_game.solved? 

# 5. Reflection 

# This was a great reminder that code can be much dryer with the use of instance variables. I don't need the if/else loop in #solved?
# in order to pass all specs for this callenge.

# As I sit and reflect on this, I find myself wanting to schedule a tutoring session to talk about the use of a : on "symbols" like 
# :high, :correct, and :low. I've used this before but, I feel I want to have a conversation about this with someone more experienced 
# than me to get their insights on when this is ideal practice and exactly what that is. I think I understand it but, I would like to  
# be certain that I'm not over simplifying it so that I don't misuse it in the future. 
#
# I wouldn't say I learned anything new here, rather, solidified what we've been learning about this week. This exercise felt natural
# and was a good "level-up" challenge and felt cohesive when compared to the Die Class challenges from earlier in the week. Overall, 
# I feel really good about my strategy going into this and am satisfied with my work. 
#
#
#
# 