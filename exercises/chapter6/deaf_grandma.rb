puts "Hello, sonny!"
response = gets.chomp

while response != 'BYE'
  if response == response.upcase
    puts "NO, NOT SINCE #{rand((1950-1929))+1930}"
  else
    puts "HUH! SPEAK UP, SONNY!"
  end
  response = gets.chomp
end