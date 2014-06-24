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