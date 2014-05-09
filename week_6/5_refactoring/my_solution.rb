# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

class CreditCard
    def initialize (credit_card_number)
        @credit_card_number = credit_card_number  
        @credit_card_number = @credit_card_number.to_s
        @credit_card_number.split(//)   
        if @credit_card_number != 16
        raise ArgumentError.new("The credit card number must be 16 digits") 
        else

        
 
        @unmodified = []
        @modfied = []
        @modified_final = []

      end 
      end
    

    def check_card
        @credit_card_number.each_with_index do |item, index| 
           if index % 2 == 0
           item = item * 2
           @modfied.push(item)
           else
           @unmodified.push(item)
           end

         
           

       @modified_final = @modified.join('').split(//)
       @modified_final.map { |string_val| string_val.to_i }
    	 @total = (@unmodified.concat(@modified_final).inject(:+)

   
            
        end
       end
     end
   end


# Refactored Solution

class CreditCard
  def initialize (credit_card_number)
    @credit_card_number = credit_card_number  
    @credit_card_number = @credit_card_number.to_s
    @credit_card_number.split(//)   
    if @credit_card_number != 16
      raise ArgumentError.new("The credit card number must be 16 digits") 
    else

    @unmodified = []
    @modfied = []
    @modified_final = []

    end 
  end
    

  def check_card
    @credit_card_number.each_with_index do |item, index| 
    if index % 2 == 0
      item = item * 2
      @modfied.push(item)
    else
      @unmodified.push(item)
    end

    @modified_final = @modified.join('').split(//)
    @modified_final.map { |string_val| string_val.to_i }
    @total = (@unmodified.concat(@modified_final).inject(:+)

   end
  end
 end
end




# DRIVER TESTS GO BELOW THIS LINE






# Reflection 