# This is the "Few Thing to Try" at the end of Chapter 6: Flow Control
# in Chris Pine's book "Learn to Program" found at 
# https://pine.fm/LearnToProgram/?Chapter=06
# Solutions by Lisa Stephens 


# "99 bottles of beer on the wall..." Write a program which prints out 
# the lyrics to that beloved classic, that field-trip favorite: "99 Bottles 
# of Beer on the Wall."

song_body_a = ' of beer on the wall, '
song_body_b = ' of beer. Take one down, pass it around, '
song_body_c = ' of beer on the wall.'
bottle = " bottle"
bottles = " bottles"

bottles_of_beer = 99

while bottles_of_beer > 0

	if bottles_of_beer > 1
		puts ( bottles_of_beer.to_s + bottles + song_body_a )
		puts ( bottles_of_beer.to_s + bottles + song_body_b )
		bottles_of_beer -= 1
	else
		puts ( bottles_of_beer.to_s + bottle + song_body_a )
		puts ( bottles_of_beer.to_s + bottle + song_body_b )
		bottles_of_beer -= 1
	end
	


	if ( bottles_of_beer > 1 ) or ( bottles_of_beer == 0 )
		puts ( bottles_of_beer.to_s + bottles + song_body_c )
		puts
	else
		puts ( bottles_of_beer.to_s + bottle + song_body_c )
		puts
	end
	
	
end
