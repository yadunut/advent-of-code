require 'set'
set = Set[]
accumulator = 0
input = []

File.open('./input.txt', 'r') do |file|
  file.each_line do |line|
    input.push line.to_i
  end
end

loop do
  input.each do |i|
    accumulator += i
    if set.include? accumulator
      puts accumulator
      exit
    else
      set.add(accumulator)
    end
  end
end
