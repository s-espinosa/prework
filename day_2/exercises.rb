x = 5

until x == 0
  puts "#{x} bottles of beer on the wall!"
  puts "#{x} bottles of beer!"
  puts "Take one down, pass it around,"
  puts "#{x - 1} bottles of beer on the wall"
  puts "\n\n"
  x -= 1
end

