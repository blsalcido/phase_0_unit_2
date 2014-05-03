# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# 1. define #create_word - it should accept board coordinates 
# 2. iterate over coords to find first and last elements 
# 3. join elements together

# Initial Solution

  # def create_word(*coords) ### defines #create_word - it will accept coordinates as arguments         
  #   coords.map{|coord| @dice_grid[coord.first][coord.last]}.join("") 
  # end ### ^ #map takes an object and a block - it'll run the block for                                  
  #     ### each element and outputs the values from the block.
  #     ### It's taking the first and second coordinates from board and "smooshing" them with #join. 
  #     ### If #join wasn't there, we'd get "c o d e".


# Refactored Solution

class BoggleBoard          ### creates class BoggleBoard
 attr_reader :dice_grid    ### makes @dice_grid readable
  def initialize(dice_grid)### initialize class
    @dice_grid = dice_grid ### makes dice_grid an instance variable 
  end                      ### ends #initialize
  
  def create_word(*coords) ### defines #create_word - it will accept coordinates as arguments         
    coords.map{|coord| @dice_grid[coord.first][coord.last]}.join("") 
  end ### ^ #map takes an object and a block - it'll run the block for                                  
end   ### each element and outputs the values from the block.
      ### It's taking the first and second coordinates from board and "smooshing" them with #join. 
      ### If #join wasn't there, we'd get "c o d e".


# DRIVER TESTS GO BELOW THIS LINE

puts boggle_board.create_word([2,1], [3,1], [3,2], [3,3]) #=> "cake"                  ###true
puts boggle_board.create_word([0,1],[0,2],[1,2],[1,0],[1,1]) #=>"radio"               ###true

# Reflection 

# I need more practice with #map so, this was great. 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# 1. define #get_row - it will accept row number as argument 
# 2. return the row elements of boggle board

# Initial Solution

  # def get_row(row) ### defines #get_row
  #   @dice_grid[row]### returns corresponding row element of nested array @dice_grid
  # end              ### ends #get_row
    

# Refactored Solution
class BoggleBoard          ### creates class BoggleBoard
 attr_reader :dice_grid    ### makes @dice_grid readable
  def initialize(dice_grid)### initialize class
    @dice_grid = dice_grid ### makes dice_grid an instance variable 
  end                      ### ends #initialize
  
  def create_word(*coords) ### defines #create_word - it will accept coordinates as arguments         
    coords.map{|coord| @dice_grid[coord.first][coord.last]}.join("") 
  end ### ^ #map takes an object and a block - it'll run the block for                                  
      ### each element and outputs the values from the block.
      ### It's taking the first and second coordinates from board and "smooshing" them with #join. 
      ### If #join wasn't there, we'd get "c o d e".
    
  def get_row(row) ### defines #get_row
    @dice_grid[row]### returns corresponding row element of nested array @dice_grid
  end              ### ends #get_row
end ### ends the class    


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board.get_row(2) #=> ["e","c","l","r"]                                    ###true
                                  
 

# Reflection 

# Found nothing to refactor. 

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# 1. Define #get_col - it will accept a column number
# 2. return all elements in corresponding column number

# Initial Solution

 # def get_col(col)           ### defines #get_col
 #    @dice_grid.transpose[col]### returns corresponding column element of @dice_grid
 #  end 

# Refactored Solution

class BoggleBoard          ### creates class BoggleBoard
 attr_reader :dice_grid    ### makes @dice_grid readable
  def initialize(dice_grid)### initialize class
    @dice_grid = dice_grid ### makes dice_grid an instance variable 
  end                      ### ends #initialize
  
  def create_word(*coords) ### defines #create_word - it will accept coordinates as arguments         
    coords.map{|coord| @dice_grid[coord.first][coord.last]}.join("") 
  end ### ^ #map takes an object and a block - it'll run the block for                                  
      ### each element and outputs the values from the block.
      ### It's taking the first and second coordinates from board and "smooshing" them with #join. 
      ### If #join wasn't there, we'd get "c o d e".
    
  def get_row(row) ### defines #get_row
    @dice_grid[row]### returns corresponding row element of nested array @dice_grid
  end              ### ends #get_row
    
  def get_col(col)           ### defines #get_col
    @dice_grid.transpose[col]### returns corresponding column element of @dice_grid
  end                        ### ends #get_col
end ### ends the class   

# DRIVER TESTS GO BELOW THIS LINE

puts boggle_board.get_col(1) #=> ["r","o","c","a"]

# Reflection 

# I used the same strategy for the #get_col method as I did for the #get_row method and couldn't find anything to refactor
# for either of them. I might pair with someone on this and do it all over again and see if they have anything insightful 
# for me. I feel like this was straight-forward and easy to build. 
#
#
#
#