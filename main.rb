

f = Foo.new

enumerator = f.each

# puts "Counting calling enumerator count..."
# puts enumerator.count
# puts "Counting calling count on instance..."
# puts f.count
puts "Fetching first..."
puts enumerator.next

puts "Fetching second..."
puts enumerator.next

puts "Fetching third..."
puts enumerator.next

puts "Converting to array calling to_a"
puts enumerator.to_a
