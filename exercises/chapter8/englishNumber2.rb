def englishNumber number 
  if number < 0
    return 'Please enter a non-negative number.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  #This is the string we will return

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  # "left" is how much of the number we still have left to write out
  # "write" is the part we are writing out right now
  left = number 
  write = left/1000
  left %= 1000

  if write > 0
    thousands = englishNumber write
    numString += thousands + ' thousand'
    if left > 0
      numString += ' '
    end
  end


  write = left/100  #How many hundresds left to write out?
  left = left - write*100  # Subtract off those hundreds.

  if write > 0
    hundreds = englishNumber write
    numString += hundreds + ' hundred'
    if left > 0
      numString += ' '  #add space between 'hundred' and next number
    end
  end

  write = left/10  # How many tens left to write out?
  left = left - write * 10 #Subtract off those tens

  if write > 0
   if((write == 1) and (left > 0))
      numString += teenagers[left-1]
      left = 0
   else
      numString += tensPlace[write-1]
   end
   if left > 0
      numString += '-'
   end
  end

  write = left  # How many ones left to write out?
  left = 0  # subtract off those ones
  
  if write > 0
    numString += onesPlace[write-1]
  end

  numString
end #end englishNumber

puts englishNumber 0
puts englishNumber 9
puts englishNumber 10
puts englishNumber 11
puts englishNumber 17
puts englishNumber 32
puts englishNumber 88
puts englishNumber 99
puts englishNumber 100
puts englishNumber 101
puts englishNumber 234
puts englishNumber 3211
puts englishNumber 999999
puts englishNumber 1000000000000