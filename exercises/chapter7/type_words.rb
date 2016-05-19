word = '**'
words = Array.new

while !word.empty?
  puts "Enter any word you'd like: "
  word = gets.chomp
  if !word.empty?
    words << word
  end
end

puts words.sort