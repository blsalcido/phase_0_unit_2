# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# 1. Create methods for the wants of the user as described by the user stories 
# 2. run the code 
# 3. refactor code according to error messages from the driver test code 


# 4. Define initialize - will accept an argument 'flavors'. 
# 5. Define a method that counts all the pez in the dispenser 
# 6. Define a method that returns all flavors of pez
# 7. Define a method that adds a flavor to the existing flavors
# 8. Define a method that displays all pez flavors and organizes them  




# 3. Initial Solution

  # class PezDispenser
  #  #Initialize 
  #  def initialize (flavors) 
  #    @flavors = flavors  
  # end
  #   #Method to count the total number of pez in dispenser 
  #   def pez_count  
  #     @flavors.count #or length? or size? 
  #   end
    
  #   def get_pez
  #     @flavors.pop
  #   end
    
  #   def add_pez(new_flavor)
  #     @flavors << (new_flavor) 
  #   end
    
  #   def see_all_pez
  #     @flavors
  #   end
  
  # end
 
 


# 4. Refactored Solution

class PezDispenser
   
  def initialize (flavors) 
    @flavors = flavors  
  end
    
  def pez_count  
    @flavors.count
  end
    
  def get_pez
    @flavors.pop
  end
    
  def add_pez(new_flavor)
    @flavors << (new_flavor) 
  end
    
  def see_all_pez
    @flavors
  end
end
 


# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion Failed!" unless yield 
end  	

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
#puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 9}
#puts "Here's a look inside the dispenser:"
pez_flavors = super_mario.see_all_pez
assert {pez_flavors == flavors}
#puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
#puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 10}
#puts "Oh, you want one do you?"
#puts "The pez flavor you got is: #{super_mario.get_pez}"
assert {super_mario.get_pez == "purple"}
#puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 9} 	




# 5. Reflection 

# I'm questioning if my Pseudocode would be descriptive enough if I excluded lines 4-8. My initial strategy 
# is described in lines 1-3 but, I also felt that I knew exactly which built-in Ruby methods to call on my 
# instance variables within each method as I went along so, I pretty much just ended up filling in all the 
# methods as I went along defining them. Although, I'm still not sure what the best convention is in terms 
# of #pez_count. I don't know for certain if it would be better to use #count, #length, or #size on @flavors
# in this method. 

# I like assert methods and I enjoy converting driver test code into assert statemetns. I like that I don't 
# see anything in my terminal unless the test fails. I think I prefer that to seeing a whole bunch of "trues"
# and then having to make sure it's the right number of "trues", etc. I'd rather have my attention immediately 
# taken to whatever isn't working so I can fix it. I think assert helps with this but, beyond that, I think 
# I still need some more experience with it to really grasp it's power, if that makes sense. It's also possible
# that it's really just that simple but, lately I've been feeling like nothing is really that simple, lol. I 
# always seem to find more questions! :) 
#
#