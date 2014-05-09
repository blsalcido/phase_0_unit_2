# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: 16-digit number 
# Output: true or false 
# Steps:

1. initialize CreditCard - should accept card number 
2. raise error if number entered is < 16 digits in length
3. convert number to string so the digits can all be split up and dealt with individually 
4. define check_card - should not accept argument 
5. iterate over credit card, multiplying every other digit by 2 (change it to an integer)
6. split up all the digits again after converting them to a string again
7. add numbers together 
8 return true if sum is divisible by 10 
9. return false if sum is not divisible by 10  

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(credit_card_number) 
    raise ArgumentError.new("Invalid Credit Card Number.") if credit_card_number.to_s.length != 16
    @credit_card_number = credit_card_number.to_s.split("")
  end
  

  def check_card
    verifiable_card_num = []
  
    @credit_card_number.each_with_index { |item,index| 
      if index % 2 != 0
        verifiable_card_num << item.to_i
      elsif index % 2 == 0 
        verifiable_card_num << (item.to_i * 2) 
      end }
 
    check_card_num = verifiable_card_num.to_s.split("")
  
    check_card_num.map!{|x| x.to_i}.inject(:+)
 
    return true if check_card_num.reduce(:+) % 10 == 0 
    return false if check_card_num.reduce(:+) % 10 !=0
  end  
end



# 4. Refactored Solution


# I'm saving this for a pair session. I want to get fresh eyes on this and do it over again. 



# 1. DRIVER TESTS GO BELOW THIS LINE

validate_card_number = CreditCard.new (1234567812345670) 
puts validate_card_number.check_card #=> true



# 5. Reflection 

# This exercise brought me to tears, lol. I am trying to internalize that I'm likely to have this reaction 
# frequently throughout DBC. I need to remember that sometimes it's not until a challenge has been solved that
# it is possible to look back on it and understand it really well. All the fog has to clear and I need to take 
# a break and look at it again, then I will be able to see things clearly. 
# 
# I enjoyed the practice with converting between integers and strings because there are some built-in methods that 
# only work on either an integer or string. I had to keep vigilant of when and why I was doing this. This exercise 
# felt like one huge nested array in my head, if you don't mind the shitty comparison. It felt like I was trying to 
# keep track of lots of different steps as I wrote this and that was difficult to do and I had to resort to pen 
# and paper many times. I want to pair with someone on this. 
#