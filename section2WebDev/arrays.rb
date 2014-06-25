# Playing around with arrays inspired by Learn To Program at
# https://pine.fm/LearnToProgram/?Chapter=07
# Lisa Stephens 6/2014


candy = ["m&ms", "mints", "gumdrops"]
vegetables = ["corn", "beans", "peppers"]
fruits = ["strawberries", "plums", "bananas"]

foods = [ candy, vegetables, fruits]

puts candy
puts vegetables
puts fruits
puts

candy.push ('fudge')
candy.push ('licorice')

puts candy[0]
puts candy.last
puts candy.length

puts candy.pop
puts candy
puts candy.length

