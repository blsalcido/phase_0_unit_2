# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself -- see line 72 for partner solution].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# The assert method is testing to see if the test is true. If the test is 
# true, nothing will happen. If the test is false, it will raise a fail 
# message. A fail message results from the code above because name does not 
# equal "billybob"


# 3. Copy your selected challenge here
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


# 4. Convert your driver test code from that challenge into Assert Statements

def assert 
  raise "Assertion failed!" unless yield 
end

card_1 = CreditCard.new(1234567890123456)
card_2 = CreditCard.new(1234567812345678)

assert {card_1.check_card == false}
assert {card_2.check_card == false}

# 5. Reflection

# I wasn't sure if I had to call #check_card on card_1 and card_2 before calling assert so, 
# initially I had assert {card_1 == false} and it just didn't look right. I changed it and it 
# worked. I'm very confident about this exercise so, I'll probably do the rspec challenge if 
# I have time. 


##Did this exercise a second time with Danny Glover. 


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


# 4. Convert your driver test code from that challenge into Assert Statements

# puts card_1.check_card == true 
# puts card_2.check_card == true
# puts card_3.check_card == true 
# puts card_4.check_card == true
# puts card_5.check_card == true 

card_1 = CreditCard.new(4563960122001999) 
card_2 = CreditCard.new(4532679350038774)
card_3 = CreditCard.new(4532642548902343)
card_4 = CreditCard.new(4716142602810621)
card_5 = CreditCard.new(4485720303618200)


def check_card_assertion
  raise "Credit Card Not Valid!" unless yield 
end  

check_card_assertion {card_1.check_card}
check_card_assertion {card_2.check_card}
check_card_assertion {card_3.check_card}
check_card_assertion {card_4.check_card}
check_card_assertion {card_5.check_card}

## Reflection 

# It was pretty fun working on this with Danny becasue we figuerd out that 
# assert still works no matter what you name it. We were undecided what the 
# proper convention is - whether it's best to avoid doing this or not - 
# but, it works and that was an interesting find. 