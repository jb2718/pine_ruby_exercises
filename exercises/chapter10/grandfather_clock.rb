def clock(&clock_sound)
  hours_passed = (Time.now.hour) % 12
  
  if (hours_passed == 0)
    hours_passed = 12
  end  
  
  hours_passed.times do
    clock_sound.call
  end
end

puts "Clock A goes:"
clock do
  puts "Ding-dong!"
end

puts

puts "Clock B goes:"
clock do 
  puts "Buzz!"
end