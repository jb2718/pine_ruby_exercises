second = 1
minute_sec = 60 * second
hour_sec = 60 * minute_sec
day_sec = 24 * hour_sec
year_sec = 365 * day_sec

puts "There are #{ (year_sec / 60) / 60} hours in a year."

puts "----------------------------------------"

puts "There are #{ (10 * year_sec) / 60} minutes in a decade."

puts "----------------------------------------"

puts "I am #{32 * year_sec} seconds old"

puts "----------------------------------------"

chocolates_per_week = 4

puts "I hope to eat #{chocolates_per_week * 52 * 50} more chocolates in my life"

puts "----------------------------------------"

age = 1_246_000_000 / year_sec

puts "You are #{age} years old"