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


puts "------------------------------"
puts "      99 Bottles Program"
puts "------------------------------"

bottles_int = 9999


while bottles_int > 0
  bottles = englishNumber bottles_int
  one_less_bottle = bottles_int -1
  one_less_bottle_string = englishNumber one_less_bottle
  
  if bottles_int > 2
    puts "#{bottles} bottles of beer on the wall...#{bottles} bottles of beer, take one down and pass it around, #{one_less_bottle_string} bottles of beer on the wall!"
  elsif bottles_int == 2
    puts "#{bottles} bottles of beer on the wall...#{bottles} bottles of beer, take one down and pass it around, #{one_less_bottle_string} bottle of beer on the wall!"
  else
    puts "#{bottles} bottle of beer on the wall...#{bottles} bottle of beer, take one down and pass it around, no bottles of beer on the wall!"
  end
  bottles_int -= 1
end