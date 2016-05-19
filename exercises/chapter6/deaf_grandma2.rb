bye_count = 0

puts "Hello, sonny!"
response = gets.chomp

while (bye_count < 3)
  if response == response.upcase
    puts "NO, NOT SINCE #{rand((1950-1930))+1930}"
  else
    puts "HUH! SPEAK UP, SONNY!"
  end
  response = gets.chomp
  if response == 'BYE'
    bye_count += 1
  else
    bye_count = 0
  end
end