# U2.W4: Cipher Challenge


# I worked on this challenge with: Amol Borcar, Bridgette Salcido 



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Check out this method in IRB to see how it works! Also refer to the ruby docs.


def north_korean_cipher(coded_message) # Defines #north_korean_cipher - it accepts a string as an argument 
  input = coded_message.downcase.split("") # Splits every element in the coded_message into individual elements in a new array called input
  decoded_sentence = [] # New empty array # Hash of shifted letters
  cipher = {"e" => "a",   # Defines hash of letters offset by 4 places
            "f" => "b",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "g" => "c",   # the best data structure for this problem? What are the pros and cons of hashes?
            "h" => "d",   
            "i" => "e",   
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"
            }
  input.each do |x|   # What is #each doing here?     # For each element in the input array, do the following code block 
    found_match = false # New variable set to false   # Why would this be assigned to false from the outset? What happens when it's true? # It runs much slower when it's false       
    cipher.each_key do |y| # What is #each_key doing here?  # Iterates over each key in the ciper hash
      if x == y                                             ## If the value of the array element is == the hash key, puts statement and append to array
        puts "I am comparing x and y. X is #{x} and Y is #{y} # NOTE: we should change these variable names because they are confusing as hell
        decoded_sentence << cipher[y]                         # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        found_match = true 
        break  # Why is it breaking here?                     # If the value of the array element is a special character, insert a blank space in the array
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? 
        decoded_sentence << " "
        found_match = true
        break                        # Try this out in IRB. What does " (0..9).to_a "do?
      elsif (0..9).to_a.include?(x)  # If the value of the array element is a number, push the number to the new array
        decoded_sentence << x
        found_match = true
        break
      end 
    end                  # What is this looking for?
    if not found_match   # If found_match still = false, push that character to the new array
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")  # Join elements in decoded_sentence array back into a string
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. # If there's a pattern of digits greater than 1 number, Divide that number by 100
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...     ### REFACTOR FOR CHEESINESS!                                                                                
    end  
    return decoded_sentence # What is this returning? # Return the decoded sentence updated according to what the loops and regex's found   
end

# Your Refactored Solution 

#Party...

##Note: Our Comments served as our pseudocode as we refactored the method## 

                                                 
def north_korean_cipher(coded_message)            # Define method with a single argument
  input = coded_message.downcase.split("")        # Split every element in the coded message input into an array called input
  decoded_sentence = []                           # Create a new empty array called decoded_sentence
  cipher = {"e" => "a",                           # Create a hash of shifted letters
            "f" => "b", 
            "g" => "c",   
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"
           }
  decoded_sentence = input.collect do |x|      # For each element in the input array, check if the value of the array element
    if cipher.has_key? (x)                     ## is equal to the hash key 
      cipher[x]
    elsif x.match(/[\@\#\%\$\&\*\^]/)           # Else, if the value of the array element is a special character, insert blank space in the array
      " "
    else                                        # If the value of the element is none of the above, push that element into the array
      x
    end # Ends the if/else branch               # We don't need an additional conditional statement for when x = (0..9) because that will be                         
  end   # Ends the for loop                     ## accounted for automatically by the regex that follows these loops 
  decoded_sentence = decoded_sentence.join("")  # Join all the elements in the array
  return decoded_sentence if decoded_sentence.gsub!(/\d+/) {|num| num.to_i/100} # Check if the decoded_sentence has multiple consecutive numbers. 
end # Ends method                                                               # If so, divide by 100 and return decoded_sentence array
                      

# Driver Code: 
# This is driver code and should print true Find out what Kim Jong Un is saying below and turn it into driver code as well. 
# Driver Code statements should always return "true"
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
# I'm still working on finding methods that I can implement in order to eliminate the need for the cipher hash. My partner and I 
# did extensive research while pairing on this challenge and found a couple of methods that seemed as though they would work. But, 
# when it came time to try them, we got really strange error messages. For example, we wanted to use the method #rotate on an array
# of letters from a-z that we would later "attach" to an array of letters that followed normal, alphabetical order. We know that 
# #rotate should work on arrays but, when we tried to implement it, we got an error message that read something like, "undefined 
# local variable or method rotate". That didn't make any sense to us; rotate should have worked on our array! So, after spending 
# about 45 minutes working on that alone, we decided to proceed with refactoring the rest of our code and that process was rather 
# seamless. My partner and I worked efficiently and switched navigator and drivor roles with ease. It took us less than half the 
# time we spent trying to refactor the cipher hash to complete the rest of the challenge. My favorite part was getting to use a 
# little regex for the symbols array inside of the if/else branch. I'm happy with how this challenge went overall. 





















