def time_code(description_of_block, &code)
  start_time = Time.now
  code.call
  duration = Time.now - start_time

  puts "#{description_of_block}: #{duration} seconds"
end


time_code'count to 1 million' do
  number = 0
  1_000_000.times do
    number += 1
  end
end

time_code'25,000 doublings' do
  number = 1
  25_000.times do
    number *= 2
  end
  puts "#{number.to_s.length} digits"
end