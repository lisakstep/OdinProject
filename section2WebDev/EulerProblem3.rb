# This is Lisa Stephens' ruby solution to Euler Project problem 3
#
# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

target_number = 600851475143
working_number = target_number
prime_factors = []
divisor = 2

while ( divisor <= target_number )

	if ( !divisor.even? or divisor == 2)
		
		while working_number%divisor == 0
			prime_factors.push divisor
			working_number = working_number/divisor
		end

	end
	divisor = divisor.next
end

puts "The largest prime factor of #{target_number} is #{prime_factors.last}."
