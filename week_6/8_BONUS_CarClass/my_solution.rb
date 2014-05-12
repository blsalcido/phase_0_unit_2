# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode

1. initialize(model of car and color)
2. drive (miles,speed)
3. turn(direction)
4. check_speed(none)
5. accelerate(faster)
6. decelerate(slower)
7. stop
8. mileage
8. add_pizza(pizza)
9. get_next_pizza



class Car  
  attr_accessor :model, :color
  
  def initialize (model, color)
    @model = model
	  @color= color
	  @total_distance = []
	  @hot_pizzas = []
	  puts"Luckyyy, you get to drive a #{color} #{model}!"
  end
	
  def drive(miles,speed) 
    @miles = miles
    @total_distance << miles  
    puts "Drive #{miles} miles. The speed limit here is #{speed}mph."
  end  
	
  def turn(direction)
    @direction = direction
	  puts "You turned #{direction}."
  end 
	
  def check_speed
	  puts "Your speed is #{@speed}mph."
  end
	
  def accelerate(faster_speed)
    @speed = faster_speed
	  puts "You have sped up to #{faster_speed}mph."
  end
  
  def decelerate(slower_speed)
    @speed = slower_speed
    puts "You have slowed down to #{slower_speed}mph."
  end 
	   
  def stop
    @speed = 0
	  puts "You are stopped."
  end
		
  def mileage 
    @total_distance = @total_distance.inject(:+)
    puts "You have traveled #{@total_distance} miles"
  end
 
  def add_pizza(pizza)
    @hot_pizzas << pizza 
  end  
  
  def pizzas
    @hot_pizzas
  end
  
  def get_next_pizza 
    if @hot_pizzas.empty?
      puts "No more pizzas left to deliver tonight!" 
    else 
      puts "Next order up is #{@hot_pizzas.shift}!"
    end    
  end
end  
    


# 1. DRIVER TESTS GO BELOW THIS LINE


my_car = Car.new("Bugatti Veyron", "black")                   ### Create new car of desired model type
puts my_car.drive(0.25,25)                                    ### Drive .25 miles at 25mph 
puts my_car.stop                                              ### Stop at stop sign
puts my_car.turn("right")                                     ### Turn right at stop sign
puts my_car.accelerate(35)                                    ### Going the speed limit after turn
puts my_car.drive(1.5, 35)                                    ### Drive 1.5 miles at 35mph
puts my_car.check_speed                                       ### Check current speed (35mp)
puts my_car.decelerate(15)                                    ### Slow down to 15mph at school zone
puts my_car.drive(0.25,25)                                    ### Drive .25 miles at 25mph
puts my_car.stop                                              ### Stop at stop sign                        
puts my_car.turn("left")                                      ### Turn left at stop sign
puts my_car.accelerate(35)                                    ### Going the speed limit after turn
puts my_car.drive(1.4,35)                                     ### Drive 1.4 miles at 35mph
puts my_car.stop                                              ### Stop at destination
puts my_car.mileage                                           ### Log total distance traveled
puts my_car.add_pizza("Veggie")                               ### Adding veggie pizza
puts my_car.add_pizza("Meat-lovers")                          ### Adding meat lovers pizza
puts my_car.add_pizza("Pepperoni")                            ### Adding pepperoni pizza
puts my_car.pizzas                                            ### Showing all pizzas in the car
puts my_car.get_next_pizza                                    ### Showing first pizza to be delivered
puts my_car.get_next_pizza                                    ### Showing second pizza to be delivered
puts my_car.get_next_pizza                                    ### Showing last pizza to be delivered 
puts my_car.get_next_pizza                                    ### Showing that there are no more pizzas 
 

# 5. Reflection 

# This was fun, I really enjoyed that the user stories were written in the context of a video game   
# player. I had the most fun with the very last method. I like using #empty? there to get the job done
# and I like playing with pointing to elements in a hash within a string. 
#



