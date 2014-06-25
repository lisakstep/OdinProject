# Practice in Ruby from Learn To Program Chapter 7
# Lisa Stephens 6/2014
#
# Rewrite your Table of Contents program (from the chapter on methods). 
# Start the program with an array holding all of the information for your 
# Table of Contents (chapter names, page numbers, etc.). Then print out 
# the information from the array in a beautifully formatted Table of Contents.

line_width = 80
toc_contents = ["Table of Contents", "Chapter 1:  Numbers", "page 1", "Chapter 2:  Letters", "page 72", "Chapter 3:  Variables", "page 118" ]

puts toc_contents.first.center(line_width)
puts toc_contents[1].ljust(line_width/2) + toc_contents[2].rjust(line_width/2)
puts toc_contents[3].ljust(line_width/2) + toc_contents[4].rjust(line_width/2)
puts toc_contents[5].ljust(line_width/2) + toc_contents[6].rjust(line_width/2)