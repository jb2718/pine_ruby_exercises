# I guess we could write a program which asks for your first, middle, and last names individually, 
# and then adds those lengths together... hey, why don't you do that! Go ahead, I'll wait.

puts "What is your first name? "
first_name = gets.chomp

puts "What is your middle name? "
middle_name = gets.chomp

puts "What is your last name? "
last_name = gets.chomp

chars = last_name.length + middle_name.length + first_name.length

puts "Hello, #{first_name} #{middle_name} #{last_name}!  Your name has #{chars} characters"