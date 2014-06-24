# This is the "Few Thing to Try" at the end of Chapter 1: Numbers
# in Chris Pine's book "Learn to Program" found at 
# https://pine.fm/LearnToProgram/?Chapter=01
# Solutions by Lisa Stephens

# Useful constants
years_in_a_decade = 10
days_in_a_year = 365
hours_in_a_day = 24
minutes_in_an_hour = 60
seconds_in_a_minute = 60

# how many hours are in a year?
hours_in_a_year = 365 * 24
puts "There are #{hours_in_a_year} hours in a normal year and #{hours_in_a_year + 24} in a leap year."

# how many minutes are in a decade?
minutes_in_a_decade = years_in_a_decade * days_in_a_year * hours_in_a_day * minutes_in_an_hour
puts "There are #{minutes_in_a_decade} minutes in a decade."

# how many seconds old am I?
my_age_in_days = (51 * days_in_a_year) + 11*30 + 4
my_age_in_hours = my_age_in_days * hours_in_a_day
my_age_in_minutes = my_age_in_hours * minutes_in_an_hour
my_age_in_seconds = my_age_in_minutes * seconds_in_a_minute
puts "I am approximately #{my_age_in_seconds} seconds old."

# how many chocolates do I hope to eat in my life?
# if I am 1031 million seconds old, how old am I?
my_theoretical_age = ( ( ( (1031000000 / seconds_in_a_minute) / minutes_in_an_hour) / hours_in_a_day) / days_in_a_year) 
puts "If I am 1031 million seconds old, I am #{my_theoretical_age} years old."
