# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer
 
  attr_reader :contents
 
# Are there any more methods needed in this class? #I don't think so.
  def initialize     
    @contents = []  # Drawer contents is an array
    @open = true    # Drawer is open by default 
  end
 
  def open          #Opens the silverware drawer
    @open = true     
  end
 
  def close         #Closes the silverware drawer
    @open = false   #@open becomes false because the drawer is closed
  end 
 
  def add_item #does this need an argument? 
    @contents << item #Should use more specific name for item -- Maybe new utensil? 
  end
 
  def remove_item(item = @contents.pop) #what is `#pop` doing? #Removing the last item in the array
    @contents.delete(item) #Maybe a new name for this method would be useful. #Remove_last_item? 
  end
 
  def dump  # what should this method return? #This *should* return an empty silverware drawer array
    puts "Your drawer is empty." #This isn't actually emptying anything yet. 
  end
 
  def view_contents #Displays items inside drawer array
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type } #puts each item type in array in list format 
  end
#Need to end class here.  
 
class Silverware
 
  attr_reader :type
  
# Are there any more methods needed in this class? # Yes, need #clean_silverware
 
  def initialize(type, clean = true) 
    @type = type
    @clean = clean
  end
 
  def eat
    puts "eating with the #{type}"
    @clean = false #@clean becomes false here because the type of silverware that is in use is now dirty because it's in use
  end
 # New method for clean_silverware should go here 
end
 
 
knife1 = Silverware.new("knife") #Creates a new instance of Silverware  
 
silverware_drawer = Drawer.new #New instance of Drawer 
silverware_drawer.add_item(knife1) #Adds one knife to the drawer 
silverware_drawer.add_item(Silverware.new("spoon")) # New instance of Silverware, adds item "spoon" to drawer 
silverware_drawer.add_item(Silverware.new("fork"))  # New instance of Silverware, adds item "fork" to drawer
silverware_drawer.view_contents # Puts contents of drawer: - knife, fork, spoon #line breaks  
 
silverware_drawer.remove_item # Removes last item added ("fork") from drawer  
silverware_drawer.view_contents # Puts contents of drawer: -knife, spoon   
sharp_knife = Silverware.new("sharp_knife") # Creates a sharp knife "type" 
 
 
silverware_drawer.add_item(sharp_knife) # Adds a sharp knife to the end of the silverware drawer array 
 
silverware_drawer.view_contents #Puts contents of drawer: spoon, knife, sharp knife
 # Is it necessary to pass sharp_knife here? 
removed_knife = silverware_drawer.remove_item(sharp_knife) # Removing sharp knife from silverware drawer array
removed_knife.eat # Puts "eating with the sharp knife" then changes @clean assignment to false since the knife is now dirty
removed_knife.clean_silverware # Need new method for this. Looks like it's supposed to set @clean to true 
 
silverware_drawer.view_contents # Puts spoon, knife  
silverware_drawer.dump # puts "Your drawer is empty" 
silverware_drawer.view_contents #What should this return? #Spoon, knife. 
 
# Returns nil  
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat                                  # Not sure what is meant by "add some puts statements to help you trace through the code..."
 
#BONUS SECTION
# puts fork.clean #In order to use this, I think :clean needs to be added to att_reader in Class Silverware. 
                  #Not sure yet if I'm supposed to make a new method for this entirely. 
 
 
#######FINAL CODE#######
class Drawer
 
  attr_reader :contents
 
# Are there any more methods needed in this class? #I don't think so.
  def initialize     
    @contents = []  # Drawer contents is an array
    @open = true    # Drawer is open by default 
  end
 
  def open          #Opens the silverware drawer
    @open = true    
  end
 
  def close         #Closes the silverware drawer
    @open = false   #@open becomes false because the drawer is closed
  end 
 
  def add_item(new_utensil) #does this need an argument? 
    @contents << new_utensil #Changed argument name to something more specific.
  end
 
  def remove_item(last_item = @contents.pop) #what is `#pop` doing? #Removing the last item in the array
    @contents.delete(last_item) #Changed argument name to something I think is more descriptive. 
  end
 
  def dump  # what should this method return? #This *should* return an empty silverware drawer array
    puts "Your drawer is empty." 
    @contents = [] #Now #dump will actually return an empty array 
  end
  
  def view_contents #Displays items inside drawer array
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type } #puts each item type in array in list format 
  end
end #Added an end to end the class 
 
class Silverware
 
  attr_reader :type; :clean #Added :clean here. I noticed that when I change this to :clean_silverware, I get the exact same output. Hmm.
  
# Are there any more methods needed in this class? # Yes, need #clean_silverware
 
  def initialize(type, clean = true) 
    @type = type
    @clean = clean
  end
 
  def eat
    puts "eating with the #{type}"
    @clean = false #@clean becomes false here because the type of silverware that is in use is now dirty because it's in use
  end
 # Added new method #clean_silverware below
  def clean_silverware  
    puts "clean #{type}"#puts "clean 'type'"
    @clean = true #evaluates clean to true
  end
end #Added an end here to end the class 
 
 
#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

knife1 = Silverware.new("knife") #Creates a new instance of Silverware  
 
silverware_drawer = Drawer.new #New instance of Drawer 
silverware_drawer.add_item(knife1) #Adds one knife to the drawer 
silverware_drawer.add_item(Silverware.new("spoon")) # New instance of Silverware, adds item "spoon" to drawer 
silverware_drawer.add_item(Silverware.new("fork"))  # New instance of Silverware, adds item "fork" to drawer
silverware_drawer.view_contents # Puts contents of drawer: - knife, fork, spoon #line breaks  
 
silverware_drawer.remove_item # Removes last item added ("fork") from drawer  
silverware_drawer.view_contents # Puts contents of drawer: -knife, spoon   
sharp_knife = Silverware.new("sharp knife") # Creates a sharp knife "type" 
 
 
silverware_drawer.add_item(sharp_knife) # Adds a sharp knife to the end of the silverware drawer array 
 
silverware_drawer.view_contents #Puts contents of drawer: spoon, knife, sharp knife
 # Is it necessary to pass sharp_knife here? 
removed_knife = silverware_drawer.remove_item(sharp_knife) # Removing sharp knife from silverware drawer array
removed_knife.eat # Puts "eating with the sharp knife" then changes @clean assignment to false since the knife is now dirty
removed_knife.clean_silverware # Need new method for this. Looks like it's supposed to set @clean to true 
 
silverware_drawer.view_contents # Puts spoon, knife  
silverware_drawer.dump # puts "Your drawer is empty" 
silverware_drawer.view_contents #What should this return? #Spoon, knife. 
 
# Returns nil  
fork1 = Silverware.new("fork") #New instance of silverware
silverware_drawer.view_contents #puts "The drawer contains: -fork" 
silverware_drawer.add_item(fork1) #add some puts statements to help you trace through the code...
fork=silverware_drawer.remove_item(fork1)# Not sure what is meant by "add some puts statements to help you trace through the code..."
fork.eat #puts eating with fork
fork.clean_silverware # Puts "clean fork"


# 5. Reflection 

# I enjoyed how this exercise forced me to be specific about what was happening on each line of the code but, on the other hand, 
# I recently learned from one of my evaluations that good code should really speak for itself; if it's too complicated, it often 
# requires a comment. Simple, straightforward code should not need so many comments. I guess I still feel like comments are a bit 
# of a safety net and it's hard for me to picture not using so many of them. I like using them for now but, in the future this is 
# something I hope to feel secure not doing. 

# The over all tone of this challenge feels like a story to me. There's a process taking place in each of these methods. That's 
# really true for all methods but, it feels especially true in the context of this challenge and that may be because the actions
# here are so relatable to everyday life. 

# A couple of weeks ago, I had a breakthrough with arrays and hashes. I finally felt like "exactly what they are" really clicked 
# for me. I'm sort of feeling like I can't tell if I'm missing something this week. I believe I understand everything but, I really
# want another "a-ha" sensation over the more recent material. I think, possibly, I just need to keep reading until I find something, 
# some explaination, that is really unique and helps deepen my understanding of these things. 
