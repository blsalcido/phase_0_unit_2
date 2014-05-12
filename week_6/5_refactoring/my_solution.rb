# U2.W6: Refactoring for Code Readability


# I worked on this challenge [with Rj Bernaldo].


# I worked on this challenge with:
# 1) Bridgette Salcido
# 2) RJ Bernaldo


# Original Solution
class CreditCard_OLD
  def initialize(credit_card_number) 
    raise ArgumentError.new("Invalid Credit Card Number.") if credit_card_number.to_s.length != 16
    @credit_card_number = credit_card_number.to_s.split("")
  end
  
  def check_card
    verifiable_card_num = []
  
    @credit_card_number.each_with_index { |item,index| 
      if index % 2 != 0 # is odd?         
        verifiable_card_num << item.to_i
      elsif index % 2 == 0 # is even? 
        verifiable_card_num << (item.to_i * 2) 
      end }
 
    check_card_num = verifiable_card_num.to_s.split("")
  
    check_card_num.map!{|x| x.to_i}
 
    return true if check_card_num.reduce(:+) % 10 == 0 
    return false if check_card_num.reduce(:+) % 10 !=0
  end  
end

# Refactored Solution

class CreditCard
  
  def initialize(credit_card_number)
    raise ArgumentError.new("Invalid Credit Card Number.") if credit_card_number.to_s.length != 16
    @credit_card_number = credit_card_number.to_s.split(//)
  end
  
  def check_card
    
    check_card_num = @credit_card_number.inject([]) { |verifiable_card_num, item|
      if @credit_card_number.index(item).odd?
        verifiable_card_num << item.to_i
      elsif @credit_card_number.index(item).even?
        verifiable_card_num << (item.to_i * 2)
      end
      ; verifiable_card_num
    }#.to_s.split("").map!{|x| x.to_i}
    
    #check_card_num = check_card_num.join("").split("").map {|x| x.to_i}
    #check_card_num = check_card_num.map {|x| x.to_i}
    
    #check_card_num = verifiable_card_num.to_s.split("")
    
    #check_card_num.map!{|x| x.to_i}
 
    # if check_card_num.reduce(:+) % 10 == 0 
    #   true
    # else
      check_card_num#.inject(:+) % 10
    #end
  end
end

#coordinates.inject([]) { |word, coordinate| word << coordinate ; word }

# DRIVER TESTS GO BELOW THIS LINE

card_1 = CreditCard.new(4563960122001999) 
# card_2 = CreditCard.new(4532679350038774)
# card_3 = CreditCard.new(4532642548902343)
# card_4 = CreditCard.new(4716142602810621)
# card_5 = CreditCard.new(4485720303618200)


p card_1.check_card# == true 
# p card_2.check_card# == true
# p card_3.check_card# == true 
# p card_4.check_card# == true
# p card_5.check_card# == true 

# def assert
#   raise "Credit Card Not Valid!" unless yield 
# end  


# assert {card_1.check_card}
# assert {card_2.check_card}
# assert {card_3.check_card}
# assert {card_4.check_card}
# assert {card_5.check_card}



# Reflection 

# Found only a few things to refactor further so, decided to change our strategy 
# altogether instead. 
# We really wanted to try using #inject to invoke a block of code because neither 
# Rj or myself have had much experience with this. So...then we broke it....a lot. 
# I feel satisfied by this challenge because we learned so much along the way. We're 
# still trying and have already scheduled a pair session for Monday, May 13th to 
# continue working on this together. I think we got pretty close, it was tripping us 
# up that we had an array of [odd, odd, odd, even*2, even*2, even*2] for a while 
# before we realized that we had been appending an empty array with numbers out of 
# order as compared with how we need them to be organized in the array to proceed 
# in our method. So, we finally fixed that after lots of testing, which was really 
# fun. I really want to figure this out and think we can with a little more time. 
# To be continued! 



