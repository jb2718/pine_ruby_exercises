$num_calls = 0
def log description, &code_block  
  indent = ''
  $num_calls.times{indent += '  '}

  puts  indent + "starting \'#{description}\' block..."
  
  $num_calls += 1
  result = code_block.call
  $num_calls -= 1
  
  indent = ''
  $num_calls.times{indent += '  '}
  
  puts indent + "\'#{description}\' finished, returning: " + result.to_s
end


log "inner block" do
 log "tiny block" do
    "I'm working here!"
 end
 5 + 8
end