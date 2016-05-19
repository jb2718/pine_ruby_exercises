puts "------------------------------"
puts "      99 Bottles Program"
puts "------------------------------"

bottles = 99

while bottles > 0
  if bottles > 2
    puts "#{bottles} bottles of beer on the wall...#{bottles} bottles of beer, take one down and pass it around, #{bottles-1} bottles of beer on the wall!"
  elsif bottles == 2
    puts "#{bottles} bottles of beer on the wall...#{bottles} bottles of beer, take one down and pass it around, #{bottles-1} bottle of beer on the wall!"
  else
    puts "#{bottles} bottle of beer on the wall...#{bottles} bottle of beer, take one down and pass it around, no bottles of beer on the wall!"
  end
  bottles -= 1
end
