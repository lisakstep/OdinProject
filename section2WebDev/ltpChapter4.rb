# This is the "Few Thing to Try" at the end of Chapter 4: Mixing It Up
# in Chris Pine's book "Learn to Program" found at 
# https://pine.fm/LearnToProgram/?Chapter=04
# Solutions by Lisa Stephens 

#
var1 = 2
var2 = '5'
puts var2
puts var1
puts var1.to_s + var2


# Write a program which asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.

puts "Please tell me your first name."
first_name = gets.chomp
puts "Please tell me your middle name."
middle_name = gets.chomp
puts "Please tell me your last name."
last_name = gets.chomp
puts "Please tell me if it is morning, afternoon, or evening."
period_of_day = gets.chomp
puts "Good " + period_of_day + ", " + first_name + " " + middle_name + " " + last_name + "."



# Write a program which asks for a person's favorite number. Have your 
# program add one to the number, then suggest the result as a bigger 
# and better favorite number. (Do be tactful about it, though.)
puts 'What is your favorite number?'
user_favorite_number = gets.chomp
suggested_favorite_number = user_favorite_number.to_i + 1
puts 'Don\'t you think ' + suggested_favorite_number.to_s + ' would be better?'