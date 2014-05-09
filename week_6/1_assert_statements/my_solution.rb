# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


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