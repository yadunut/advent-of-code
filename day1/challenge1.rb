accumulator = 0
File.open('./input.txt', 'r') do |f|
  f.each_line do |line|
    accumulator += line.to_i
  end
end

puts accumulator
