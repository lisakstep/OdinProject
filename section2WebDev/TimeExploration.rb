# Practice in Ruby from Learn To Program Chapter 8
# Lisa Stephens 6/2014

time_now = Time.new
time_my_birth = Time.mktime(1962, 7, 19)

my_age_seconds = time_now - time_my_birth

my_age_years = my_age_seconds /60 /60/ 24/ 365

puts ("My age: " + (my_age_years.to_i).to_s )