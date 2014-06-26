# Practice in Ruby from Learn To Program Chapter 9
# Lisa Stephens 6/2014

# Our dice are just about perfect. The only thing that might be missing is a way to set which 
# side of a die is showing... why don't you write a cheat method which does just that! Come back 
# when you're done (and when you tested that it worked, of course). Make sure that someone 
# can't set the die to have a  7 showing!

# The bulk of this code is Chris Pine's from Learn to Program
# https://pine.fm/LearnToProgram/?Chapter=09
# I have added the cheat method

class Die
  
  def initialize
    #  I'll just roll the die, though we
    #  could do something else if we wanted
    #  to, like setting the die with 6 showing.
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def showing
    @numberShowing
  end

  def cheat number
  	if 0<number and number<7
  		@numberShowing = number
	else
		roll
  	end
  end

  
end

puts Die.new.showing
puts
puts Die.new.cheat(1)
puts Die.new.cheat(2)
puts Die.new.cheat(3)
puts Die.new.cheat(4)
puts Die.new.cheat(5)
puts Die.new.cheat(6)
puts
puts Die.new.cheat(8)
puts Die.new.cheat(0)