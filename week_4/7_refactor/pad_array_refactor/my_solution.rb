# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
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





# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:



# 4. My refactored solution:




# 5. Reflection
