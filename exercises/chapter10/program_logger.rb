def log description, &code_block
  puts "starting \'#{description}\' block..."
  result = code_block.call
  puts "\'#{description}\' finished, returning: " + result.to_s
end

log "inner block" do
 log "tiny block" do
    "I'm working here!"
 end
 5 + 8
end
