lineWidth = 50
contents = ['Table of Contents', ['Chapter 1: Numbers','page 1'], ['Chapter 2: Letters','page 72'], ['Chapter 3: Variables','page 118']]

puts
puts contents.first.center(lineWidth)

puts #spacer

print contents[1][0].ljust(lineWidth/2)
print contents[1][1].rjust(lineWidth/2)

puts #spacer

print contents[2][0].ljust(lineWidth/2)
print contents[2][1].rjust(lineWidth/2)

puts "" #spacer

print contents[3][0].ljust(lineWidth/2)
print contents[3][1].rjust(lineWidth/2)