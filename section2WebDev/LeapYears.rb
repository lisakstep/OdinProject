# Practice in Ruby from Learn To Program Chapter 6
# Lisa Stephens 6/2014
#
# Leap Years. Write a program which will ask for a starting year and an ending 
# year, and then puts all of the leap years between them (and including them, 
# if they are also leap years). Leap years are years divisible by four (like 
# 1984 and 2004). However, years divisible by 100 are not leap years (such as 
# 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which 
# were in fact leap years). (Yes, it's all pretty confusing, but not as confusing 
# has having July in the middle of the winter, which is what would eventually happen.)

puts "I will give you all the leap years for the range you give me, inclusive."
puts "What is the year from which you want to start?"
starting_year = gets.chomp.to_i

puts "What is the final year in which you are interested?"
ending_year   = gets.chomp.to_i

puts "The leap years in the range you specified are: "

year_being_examined = starting_year

while year_being_examined < ending_year + 1

	if ( year_being_examined % 4 ) == 0

		if (year_being_examined % 400 ) == 0
			puts year_being_examined.to_s

		elsif (year_being_examined % 100) == 0

		else
			puts year_being_examined.to_s

		end


	end

	year_being_examined = year_being_examined + 1
	
end