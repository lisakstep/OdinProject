# Practice in Ruby from Learn To Program Chapter 8
# Lisa Stephens 6/2014
#
# How about weddingNumber? It should work almost the same as englishNumber, except 
# that it should insert the word "and" all over the place, returning things like 
# 'nineteen hundred and seventy and two', or however wedding invitations are 
# supposed to look. I'd give you more examples, but I don't fully understand 
# it myself. You might need to contact a wedding coordinator to help you.
## TODO add the "and"s

def weddingNumber number
  if number < 0  #  No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  
  #  No more special cases!  No more returns!
  
  numString = ''  #  This is the string we will return.
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)

    left  = number

    #  My code to handle trillions
    write = left / 1000000000000
    left = left - write*1000000000000

    if write > 0
      trillions = weddingNumber write
      numString = numString + trillions + ' trillion'

      if left > 0
        numString = numString + ' and '
      end 

    end

    #  My code to handle billions
    write = left / 1000000000
    left = left - write*1000000000

    if write > 0
      billions = weddingNumber write
      numString = numString + billions + ' billion'

      if left > 0
        numString = numString + ' and '
      end 

    end

  #  My code to handle millions
    write = left / 1000000
    left = left - write*1000000

    if write > 0
      millions = weddingNumber write
      numString = numString + millions + ' million'

      if left > 0
        numString = numString + ' and '
      end 

    end


  #  My code to handle thousands
    write = left / 1000
    left = left - write*1000

    if write > 0
      thousands = weddingNumber write
      numString = numString + thousands + ' thousand'

      if left > 0
        numString = numString + ' and '
      end 

    end




  # Testing for hundreds below here
  write = left/100          #  How many hundreds left to write out?
  left  = left - write*100  #  Subtract off those hundreds.
  
  if write > 0
    #  Now here's a really sly trick:
    hundreds  = weddingNumber write
    numString = numString + hundreds + ' hundred'
     #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  Remember that "write" is (at the moment) the number of
    #  hundreds we have to write out.  After we add "hundreds" to "numString",
    #  we add the string ' hundred' after it.  So, for example, if
    #  we originally called englishNumber with 1999 (so "number" = 1999),
    #  then at this point "write" would be 19, and "left" would be 99.
    #  The laziest thing to do at this point is to have englishNumber
    #  write out the 'nineteen' for us, then we write out ' hundred',
    #  and then the rest of englishNumber writes out 'ninety-nine'.
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end
  
  write = left/10          #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      #  The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
 end
    
    if left > 0
      #  So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  The "-1" is because onesPlace[3] is 'four', not 'three'.
  end
  
  #  Now we just return "numString"...
  numString
end

puts weddingNumber(5988838335)
puts weddingNumber(1375322)
puts weddingNumber(555)
puts weddingNumber(1322)
puts weddingNumber(594587654)
puts weddingNumber(1322332600)




