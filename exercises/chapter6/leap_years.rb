puts "Give me a starting year: "
start_year = gets.chomp.to_i

puts "Give me an ending year: "
end_year = gets.chomp.to_i

puts "----------------------------"

year = start_year
while year <= end_year
  if (year % 4 == 0) and (year % 100 != 0)
    puts year
  elsif (year % 100 == 0) and (year % 400 == 0)
    puts year
  end
  year += 1
end