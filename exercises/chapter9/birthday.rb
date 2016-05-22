puts "What year were you born? "
year = gets.chomp

puts "In what month were you born? (Please use the numerical form of the month: MM )"
month = gets.chomp

puts "What day of the month were you born? "
day = gets.chomp

start_date = Time.mktime(year, month, day)
now = Time.new
birthdays = start_date
year = 60 * 60 * 24 * 365.25


while birthdays < now
  puts "Dollar Bill!"
  birthdays += year
end