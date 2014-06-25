# Practice in Ruby from Learn To Program Chapter 6
# Lisa Stephens 6/2014


# Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), 
# she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in 
# all capitals). If you shout, she can hear you (or at least she thinks so) and 
# yells back, NO, NOT SINCE 1938! To make your program really believable, have 
# grandma shout a different year each time; maybe any year at random between 
# 1930 and 1950. (This part is optional, and would be much easier if you read 
# the section on Ruby's random number generator at the end of the methods chapter.) 
# You can't stop talking to grandma until you shout BYE.
#
# Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' 
# without one!
# Hint 2: Try to think about what parts of your program should happen over and 
# over again. All of those should be in your while loop


grandma_what_answer = "HUH?! SPEAK UP, SONNY!"
grandma_not_since_answer = "NO, NOT SINCE "

sonny_phrase = ""

while sonny_phrase != "BYE"

	if (sonny_phrase == sonny_phrase.upcase) and ( sonny_phrase != "" )

		year = 	rand(21) + 1930
		puts grandma_not_since_answer + year.to_s

	elsif sonny_phrase != ""
		
		puts grandma_what_answer

	end

	sonny_phrase = gets.chomp

end

puts "BYE BYE SWEETIE!"