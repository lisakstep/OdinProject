
# Lisa Stephens ruby solution for Euler Project problem 1:
#
# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# result is 233168
# completed on 6/29/2014

top_of_range = 1000
number = 0
sum = 0

while number < top_of_range
	
	if ( (number % 3) == 0 ) or ( (number % 5) == 0)  
		sum = sum + number
	end
	number = number.next
end

puts sum.to_s