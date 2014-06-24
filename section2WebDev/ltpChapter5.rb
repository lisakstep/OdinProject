# This is the "Few Thing to Try" at the end of Chapter 5: More About Methods
# in Chris Pine's book "Learn to Program" found at 
# https://pine.fm/LearnToProgram/?Chapter=05
# Solutions by Lisa Stephens 

# Write an Angry Boss program. It should rudely ask what you want. Whatever you
# answer, the Angry Boss should yell it back to you, and then fire you. For 
# example, if you type in I want a raise., it should yell back 
# WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

puts "What do you want?"

employee_response = gets.chomp.upcase

puts "WHADDAYA MEAN \"" + employee_response + "\".?!? YOU'RE FIRED!!"

# So here's something for you to do in order to play around more with  
# center, ljust, and rjust: Write a program which will display a 
# Table of Contents so that it looks like this:

line_width = 80
puts ("Table of Contents").center(line_width)
puts ("")
puts ("Chapter 0").ljust line_width
puts ( ("Chapter 1:  Numbers").ljust   (line_width/2) ) + ( ("page 1").rjust   (line_width/2) )
puts ( ("Chapter 2:  Letters").ljust   (line_width/2) ) + ( ("page 72").rjust  (line_width/2) )
puts ( ("Chapter 3:  Variables").ljust (line_width/2) ) + ( ("page 118").rjust (line_width/2) )