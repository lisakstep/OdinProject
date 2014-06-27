 # Practice in Ruby from Learn To Program Chapter 10
 # Lisa Stephens 6/2014
 # https://pine.fm/LearnToProgram/?Chapter=10
 # This code is all original by me
 # Exploring blocks and procs

# Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today. That way, 
# if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. Test your method 
# out with a few different blocks (including the one I just gave you). Hint: You can use  Time.now.hour to get the current 
# hour. However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary 
# clock-face numbers (1 to 12).

def clockChime  &block

	current_hour = Time.now.hour 
	if current_hour > 12
		current_hour = current_hour - 12
	end

	counter = 0
	while counter < current_hour

		block.call 
		counter = counter + 1
	end

end	

clockChime  do
	puts "Dong!"
end

clockChime do 

	puts "hours are passing!"
	
end