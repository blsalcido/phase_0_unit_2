# # U2.W5: Virus Predictor

# # I worked on this challenge [by myself].

# # EXPLANATION OF require_relative
# # require_relative basically tells the file that you're running to search for another file relative to 
# # its position in the directory and then runs the two files together. 

# require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population, region, regional_spread)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#     @region = region
#     @next_region = regional_spread
#   end

#   def virus_effects  #HINT: What is the SCOPE of instance variables?
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private  #what is this?  what happens if it were cut and pasted above the virus_effects method

#   def predicted_deaths(population_density, population, state)
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else 
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else 
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects



require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) #initializes class VirusPredictor 
    @state = state_of_origin  # Sets all arguments equal to instance variables whose values are stored in the state_data hash 
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables? The scope is "class-wide" These variables can be seen by all methods in the class 
    predicted_deaths(@population_density, @population, @state) # this method, when called on the instance of the class, will call the two methods below  
    speed_of_spread(@population_density, @state)  
  end
  # this makes all methods that follow "private" methods (cannot be used by the user) 
  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

  def predicted_deaths(population_density, population, state)
    if @population_density >= 200 #converting raw population number to a percentage 
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor #rounding down to nearest integer 
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200 # calculates the rate at which the virus will spread according to the population density 
      speed += 0.5  
    elsif @population_density >= 150 # looks like as population decreases, the virus spreads at a faster rate 
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

STATE_DATA.each do |state, data| 
  state = VirusPredictor.new(state, data[:population_density],data[:population],data[:region],data[:regional_spread])
  state.virus_effects 
end

