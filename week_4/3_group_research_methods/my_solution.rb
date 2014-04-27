# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

#Person 1's solution - Bridgette Salcido 

def my_array_finding_method(source, thing_to_find)
  source.select {|e| e.to_s.include? (thing_to_find)} #pull whatever elements evaluate to true according to the conditions in the following block
end

def my_hash_finding_method(source, thing_to_find)
  petsOfThatAge = []	
  source.each do |k,v|                           #For each key, do the following (#each invokes a given block once for each key)
    petsOfThatAge << k if v == thing_to_find     #Append petsOfThatAge with the key(s) that correspond to the value(s) that are equal to the thing_to_find
  end
  return petsOfThatAge
end


# Identify and describe the ruby method you implemented. 
# #select -- returns a new array containing all elements of self for which a block returns true.
# #to_s -- creates string representation of self - alias for #inspect
# #include -- returns true if the object given is present in self. 
# #each -- calls a block once for every key in the hash where the key,value pairs are parameters

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
# p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
# p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
# p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
# p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# # This may be false depending on how your method deals with ordering the animals with the same ages.
# p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
# p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I was person 1.  
#
# To teach my group members about the methods I used, I made a video of my screen and uploaded it to youtube. 
# It looks blurry if you don't watch it in HD so, be sure to do that if you can. URL:
# https://www.youtube.com/watch?v=mWtlf_4UStA#t=65
#
# This exerise was great practice for researching methods. Sometimes I felt like I just had to try the methods I read about in order 
# to see if they worked becasue reading wasn't quite good enough for me to predict the outcome of applying certain methods. I hope this
# changes as I become more familiar with all this terminology and have had more exposure to built-in methods. I feel that on my second 
# method, there may be a way to avoid creating a new array but, for now, I'm not sure how to go about this. I tried #has_value? and 
# #has_key? as supplements for #include as seen in my first method but neither of them worked. I guess I'm not done researching :) 
# ##UPDATE## 
# I tried rewriting the my_hash_finding_method without creating a new array and although I get the output I'm expecting, the Driver Code 
# evaluates to false. I'm not sure why this is and would love some feedback on it. Here's the code: 
#
# # def my_hash_finding_method(source,thing_to_find)
#     source.each do |k,v| 
#   	puts "#{k}" if thing_to_find == v
#     end
#   end	
#