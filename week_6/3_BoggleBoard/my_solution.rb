# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
1. organize methods #create_word, #get_row, #get_col into class BoggleBoard. 
2. add attr_reader so that the dice_grid 2D array can be referenced by the code. 
3. create new instance of BoggleBoard and pass it the dice grid. 
4. define method #diagonal 
5. #diagonal should take coords as arguments 
6. #diagonal should return the letters found in the diagonal sections of the board.

# 3. Initial Solution
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
end ### ends class BoggleBoard 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
 


# 4. Refactored Solution

 
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
end ### ends class BoggleBoard 

 def get_diagonal(coord1,coord2)            ### defines get_diagonal - it will accept two coordinates
    possible_diagonal_coords1  =[[0,0],[3,3]]### array of set of possible diagonal coordinates
    possible_diagonal_coords2 = [[0,3],[3,0]]### array of set of possible diagonal coordinates 
    possible_diagonal_coords3 = [[3,0],[0,3]]### array of set of possible diagonal coordinates
    possible_diagonal_coords4 = [[3,3],[0,0]]### array of set of possible diagonal coordinates    
    check_if_diagonal = [coord1, coord2]     ### array of coordinates passed in as arguments
    if check_if_diagonal == possible_diagonal_coords1        ### when arguments are equal to this set of coords
      create_word([0,0], [1,1], [2,2], [3,3])                ### create this word
    elsif check_if_diagonal == possible_diagonal_coords2     ### when arguments are equal to this set of coords
      create_word([0,3], [1,2], [2,1], [3,0])                ### create this word
    elsif check_if_diagonal == possible_diagonal_coords3     ### when arguments are equal to this set of coords
      create_word([3,0], [2,1], [1,2], [0,3])                ### create this word
    elsif check_if_diagonal == possible_diagonal_coords4     ### when arguments are equal to this set of coords
      create_word([3,3], [2,2], [1,1], [0,0])                ### create this word
    else raise "Those are not possible diagonal coordinates!"### if arguments are not equal to any set of possible 
    end ### ends if/else loop                                ### diagonal coords, raise this error message.                                                      
  end ### ends #get_diagonal    
end ### ends class BoggleBoard 



# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

puts boggle_board.create_word([2,1], [3,1], [3,2], [3,3]) #=> "cake"                  ###true
puts boggle_board.create_word([0,1],[0,2],[1,2],[1,0],[1,1]) #=>"radio"               ###true
puts boggle_board.get_diagonal([0,0],[3,3]) #=> "bole"                                ###true
puts boggle_board.get_diagonal([0,3],[3,0]) #=> "edct"                                ###true
puts boggle_board.get_diagonal([3,0],[0,3]) #=> "tcde"                                ###true
puts boggle_board.get_diagonal([3,3],[0,0]) #=> "elob"                                ###true
puts boggle_board.get_diagonal([0,0],[3,2]) #=> "Those coordinates are not diagonal"  ###true
puts boggle_board.get_row(2) #=> ["e","c","l","r"]                                    ###true
puts boggle_board.get_col(1) #=> ["r","o","c","a"]                                    ###true
 
# create driver test code to retrieve a value at a coordinate here:
#Can you access the "k" character at row 3 column 2?
puts boggle_board.create_word([3,2]) == "k"                                           ###true
puts boggle_board.create_word([3,1]) == "a"                                           ###true



# 5. Reflection 

# I need to pair on this challenge. I'm not sure if I like my diagonal method. I feeli like
# either I did it wrong or there is a more efficient way of doing the same thing. My strategy 
# was basically to take the methods I wrote last week and organize them into a class then 
# write the diagonal method. It worked out fine but, my diagonal method still really bothers me. 
# Bahumbug. 
#
#
#