def englishNumber number 
  #we only want numbers from 0 - 100
  if number < 0
    return 'Please enter a number zero or greater'
  end
  if number > 100
    return 'Please enter a number 100 or lesser'
  end

  numString = ''  #This is the string we will return

  # "left" is how much of the number we still have left to write out
  # "write" is the part we are writing out right now
  left = number 
  write = left/100  #How many hundresds left to write out?
  left = left - write*100  # Subtract off those hundreds.

  if write > 0
    return 'one hundred'
  end

  write = left/10  # How many tens left to write out?
  left = left - write * 10 #Subtract off those tens

  if write > 0
    if write == 1 #we have to make a special exception for these
      if left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen' 
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'       
      end
      # we've already taken care of the digit in the ones place
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'fourty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString =  numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left = 0  # subtract off those ones
  
  if write > 0
    if write == 1
      numString += 'one'
    elsif write == 2
      numString += 'two'
    elsif write == 3
      numString += 'three'
    elsif write == 4
      numString += 'four'
    elsif write == 5
      numString += 'five'
    elsif write == 6
      numString += 'six'
    elsif write == 7
      numString += 'seven'
    elsif write == 8
      numString += 'eight'
    elsif write == 9
      numString += 'nine'
    end
      
  end


  if numString == ''
    #The only way "numString" could be empty is if 
    #"number" is 0
    return 'zero'
  end

  #If we got this far, then we had a number somewhere between  0 and 100,
  # so we need to return "numString"
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