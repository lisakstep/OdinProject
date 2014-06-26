# Practice in Ruby from Learn To Program Chapter 8
# Lisa Stephens 6/2014

# Find my age
time_now = Time.new
time_my_birth = Time.mktime(1962, 7, 19)

my_age_seconds = time_now - time_my_birth

my_age_years = my_age_seconds /60 /60/ 24/ 365

puts ("My age: " + (my_age_years.to_i).to_s )
puts time_my_birth



def make_age_from_seconds seconds
	 seconds /60 /60/ 24/ 365
end



puts ("My age: " + make_age_from_seconds(my_age_seconds).to_i.to_s )
puts time_my_birth

# Find the date that I turned 1 billion seconds old

billion_second_moment = time_my_birth + 1000000000
puts "I was a billion seconds old at " +  billion_second_moment.to_s

puts
puts "When a person is a billion seconds old, they are " + make_age_from_seconds(1000000000).to_i.to_s + " years old."
