# Practice in Ruby from Learn To Program Chapter 6
# Lisa Stephens 6/2014
#
# Let's write a program which asks us to type in as many words as we 
# want (one word per line, continuing until we just press Enter on an empty 
# line), and which then repeats the words back to us in alphabetical order. OK?
#
user_words = []

puts "Add a word to the list."
word_entered = gets.chomp
user_words.push (word_entered)

while word_entered != ''
	
	puts "Add a word to the list. Press enter when done."
	word_entered = gets.chomp
	user_words.push (word_entered)

end

puts "Ok. Here are your words, alphabetized."
puts user_words.sort