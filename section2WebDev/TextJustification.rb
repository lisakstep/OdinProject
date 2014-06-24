# try text justification methods

line_width = 40
str = '--> text <--'
puts str
puts str.ljust line_width
puts str.center line_width
puts str.rjust line_width
puts ( str.ljust (line_width/2) ) + ( str.rjust (line_width/2) )
puts ( str.ljust (line_width) ) + (str.rjust (line_width) )
