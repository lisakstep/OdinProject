# The entire Dragon class in this file is Chris Pine's from Learn to Program
# https://pine.fm/LearnToProgram/?Chapter=09
# I have added the dispatch program to make the dragon interactive to the user
#

# Write a program so that you can interact with your baby dragon. You should be able to enter commands like feed 
# and walk, and have those methods be called on your dragon. Of course, since what you are inputting are just strings, 
# you will have to have some sort of method dispatch, where your program checks which string was entered, and then 
# calls the appropriate method.

class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  He's full.
    @stuffInIntestine =  0  #  He doesn't need to go.
    @dead = false
    puts @name + ' is born.'
  end
  
  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end
  
  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end
  
  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end
  
  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  private
  
  #  "private" means that the methods defined here are
  #  methods internal to the object.  (You can feed
  #  your dragon, but you can't ask him if he's hungry.)
  
  def hungry?
    #  Method names can end with "?".
    #  Usually, we only do this if the method
    #  returns true or false, like this:
    @stuffInBelly <= 2
  end
  
  def poopy?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime
    if @stuffInBelly > 0
      #  Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      @dead = true
      exit  #  This quits the program.
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end
  
end


user_dragon_name = ''

puts "Welcome to your interactive pet dragon!"
puts "To get started, please name your new baby dragon."

while user_dragon_name == ''
	user_dragon_name = gets.chomp.capitalize
end

puts "That's a great name. Say hello to " + user_dragon_name + "."
pet = Dragon.new user_dragon_name

puts "Now that you have a baby dragon, you must take good care of it."
puts "You may do any of these activities with " + user_dragon_name + "."
puts "Feed, toss, walk, put him to bed, or rock him. Choose what you would like to do, and" 


while !@dead
	
    user_command = ''

	while (user_command != 'feed') and (user_command != 'toss') and (user_command != 'walk') and (user_command != 'bed') and (user_command != 'rock') 
		puts "enter: 'feed', 'toss', 'walk', 'bed', or 'rock'"
	user_command = gets.chomp.downcase
    end

    if user_command == 'feed'
 	  pet.feed
    end

    if user_command == 'toss'
    	pet.toss
    end

    if user_command == 'walk'
    	pet.walk
    end

    if user_command == 'bed'
    	pet.putToBed
    end

    if user_command == 'rock'
    	pet.rock
    end

end
