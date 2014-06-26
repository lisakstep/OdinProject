# Practice in Ruby from Learn To Program Chapter 8
# Lisa Stephens 6/2014

# Find the user's age
time_now = Time.new

# get the user's birthday
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "What month were you born? (Please give the number)"
birth_month = gets.chomp.to_i
puts "What day were you born (Please give the number)?"
birth_day = gets.chomp.to_i

time_user_birth = Time.mktime(birth_year, birth_month, birth_day)

user_age_seconds = time_now - time_user_birth

#my_age_years = my_age_seconds /60 /60/ 24/ 365

#puts ("My age: " + (my_age_years.to_i).to_s )
#puts time_my_birth



def make_age_from_seconds seconds
	 seconds /60 /60/ 24/ 365
end



puts ("Your age: " + make_age_from_seconds(user_age_seconds).to_i.to_s )
puts time_user_birth
puts "Spank ".* make_age_from_seconds(user_age_seconds).to_i