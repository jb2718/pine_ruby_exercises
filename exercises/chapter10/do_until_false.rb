def do_until_false(firstInput, someProc)
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call(input)
  end

  input
end


build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array << (last_number ** 2)
    array << (last_number - 1)
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end


puts do_until_false("Blah Blah", always_false)

puts do_until_false([5], build_array_of_squares).inspect