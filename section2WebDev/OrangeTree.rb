 # Practice in Ruby from Learn To Program Chapter 9
 # Lisa Stephens 6/2014
 # https://pine.fm/LearnToProgram/?Chapter=09
 # This code is all original by me
 #
 # Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses 
 # method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think 
 # an orange tree should grow in a year), and after some number of years (again, your call) the tree should 
 # die. For the first few years, it should not produce fruit, but after a while it should, and I guess that 
 # older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, 
 # you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange 
 # (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else 
 # it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick 
 # one year fall off before the next year.
 #
 class OrangeTree

 	def initialize
 		@age = 0
 		@orangeCount = 0
 		@alive = true
 	end
 	
 	def height
 		@age * 0.75 + 0.25
 	end

 	def countTheOranges
 		puts "There are " + @orangeCount.to_s + " oranges on the tree."
 		@orangeCount
 	end

 	def pickAnOrange

 		if @orangeCount < 1
 			puts "Sorry, no more oranges to pick this year."
 			
 		else
 			puts "Mmmmm. That one was delicious!"
 			@orangeCount = @orangeCount - 1
 		end
 		@orangeCount
 		
 	end

 	def oneYearPasses
 		@orangeCount = 0
 		@age = @age + 1
 		checkForDead
 		determineFruitCount
 		puts "Your tree is now " + @age.to_s + " years old and " + height.to_s + " feet tall."
 	end

 	def checkForDead
 		if @age >= 15
 			@alive = false
 			
 		else
 			@alive = true
 		end
 		if !@alive
 			puts "Sorry, your tree got old and died. Game Over"
 			exit
 		end
 	end

 	def determineFruitCount
 		if @age > 5
 			@orangeCount = 5 + @age * 5
 		else
 			@orangeCount = 0
 		end
 		
 	end
 	
 end

 tree = OrangeTree.new
 tree.height
 tree.countTheOranges
 tree.oneYearPasses
 tree.countTheOranges
 tree.pickAnOrange
 tree.oneYearPasses
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.countTheOranges
 tree.pickAnOrange
 tree.oneYearPasses
  tree.pickAnOrange
   tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange 
 tree.oneYearPasses 
 tree.countTheOranges
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.oneYearPasses
 tree.countTheOranges
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.oneYearPasses
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses
 tree.countTheOranges
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.pickAnOrange
 tree.oneYearPasses
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses
 tree.oneYearPasses
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses 
 tree.oneYearPasses
