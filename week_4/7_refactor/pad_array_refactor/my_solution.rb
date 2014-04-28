# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself ].



# 1. First Person's solution I liked(Amol Borcar)
#    What I learned from this solution: My Comment to Amol's gist

# Your pseudocode doesn't read entirely like plain English but, with that said, it's very easy to see what your strategy is from reading 
# your pseudocode. I'm using your solution as one of my favorite solutions for this week's refactor challenge. I got a lot out of reading 
# your reflection. I didn't realize that #push automatically acted destructively and that really cleared up some questions I've had about 
# code I've written recently using that method. Now, when I refactor my #pad code for a second time, I'll keep that in mind and see if 
# there's anything I can do differently to make my code more efficient. I appreciate that you told a story in your reflection and encourage 
#you to keep doing this in the weeks to come. Sometimes, when I write my own reflections I feel a bit verbose if the challenge was 
# straightforward (even if it took me a lot longer than anticipated to complete). That said, after reading your reflection for this 
#challenge, I'm motivated to keep being as detailed as possible in my reflections in case it helps someone the way yours helped me. Good work!


# Copy solution here:

# amolborcar 

# class Array
#     def pad!(int, str=nil)
#     	if (int-self.length) > 0
#         	(int-self.length).times { self.push(str) }
#     	end
#     	return self
# 	end


# # Non-destructive method

#     def pad(int, str=nil)
#         if (int-self.length) > 0
#             new_arr = self + Array.new((int-self.length), str)
#         else
#         	# I think the Array.new() here is unnecessary but I'm not sure how to remove it
#         	# without making the method destructive
#             new_arr = self + Array.new()
#         end

#     	return new_arr
# 	end
# end


# 4. Reflection 

=begin
	
	Overall, I think the logic of my strategy was correct.  Calculate the number of times that the 
	string needed to be added on to the end of the array, then do it.  However, I didn't realize that the
	#push method was automatically destructive, so I needed to change the non-destructive method to account for that.
	I had expected the destructive method to be much more difficult, but it turned out it was pretty simple.  I feel I 
	learned a lot about destructive and non-destructive methods and how they actually function.  I understood the concepts before,
	but now I have a better grasp of how methods actually operate when they are called on an object.  I had a lot of trouble
	making my non-destructive method work correctly because self kept being modified without my realizing it.  I finally figured out
	a way to create and return an entirely new array while leaving the original untouched, and I enjoyed reasoning out why it wasn't working
	on my first few attempts.

=end





# 2. Second Person's solution I liked (Greg White)
#    What I learned from this solution: My comment to Greg's gist: 
# I'm currently working on the refactor challenge for this week and will be refactoring my #pad and #pad! methods. I've been looking for 
# a way to call #pad! on #pad properly. I tried it a few times but it wasn't working for me, possibly because I was using #append somewhere 
# in my method which, I think I just read makes the method destructive no matter what. Good work, I like your solution a lot and will use it 
# as one of the solutions I like in my own refactor solution.


# Copy solution here:

# class Array 

# 	def pad!(min_length, value = nil)
# 		(min_length - self.length).times { self <<value}
# 		replace(self)
# 	end

# 	def pad(min_length, value = nil)
# 		dup.pad!(min_length, value)
# 	end

# end





# # 4. Reflection 

# # I learned a lot by doing research for this one. I especially liked this little tutorial 
# #http://dablog.rubypal.com/2007/8/15/bang-methods-or-danger-will-rubyist

# #I was fuzzy on destructive methods so it was really helpful Another hint I got by googling
# #mostly random stuff was that you could call .pad! in pad. I had spent an hour with the same
# #code in both methods except pad had dup(self) instead of replace(self) at the end and I had
# #zero idea why it wasn't working. Then I(just for kicks) called .pad! in .pad and voula! it works.
# #I wish I knew why it wouldn't work before.

# #lastly as i was trying to figure out why I couldn't get it to work I found this little gem
# #http://stackoverflow.com/questions/5608918/pad-an-array-to-be-a-certain-size  confirmed that
# # you don't have to call .pad! in .pad  I just don't know what I did wrong.



# 3. My original solution:

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


# 4. My refactored solution:

class Array
  
  def pad!(min_size, value = nil) 
    x = min_size - self.count
    x.times do
      self << value  
    end  
    return self # not sure if it is prefered to leave in return in return statements or write them without...I like leaving them in for now.
  end 

  def pad(min_length, value = nil)
    dup.pad!(min_length, value)
  end
end 


# 5. Reflection

# In combination, these solutions of my peers helped me a lot. They complimented one another as the first taught me (through the reflection)
# that #push makes methods destructive automatically. That explains why I couldn't find a way to implement #pad! on my second method, #pad. 
# So, I kept searching through my classmate's solutions and found Gregs. He calls #pad! on #pad exactly as I was thinking might be possible
# using dup. 
#
# This was a good lesson in not giving up on finding ways to improve your code. Just when I thought I had possibly done everything possible
# to make this better, I found something new :) 
#
#
# 