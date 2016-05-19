word = '**'
words = Array.new

while !word.empty?
  puts "Enter any word you'd like: "
  word = gets.chomp
  if !word.empty?
    words << word
  end
end

sorted_words = Array.new
temp = []

while words.length > 0 do
  temp[0] = words.first 
  temp[1] = 0 
  words.each_with_index do |word, idx|
    if temp[0].downcase < word.downcase
      temp[0] = word
      temp[1] = idx
    end
  end
  sorted_words << temp.first
  words.delete_at(temp.last)
end


puts sorted_words.reverse