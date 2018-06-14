x = 5

until x == 0
  if x == 1
    puts "#{x} bottle of beer on the wall!"
    puts "#{x} bottle of beer!"
    puts "Take it down, pass it around,"
    puts "No more bottles of beer on the wall"
  elsif x == 2
    puts "#{x} bottles of beer on the wall!"
    puts "#{x} bottles of beer!"
    puts "Take one down, pass it around,"
    puts "#{x - 1} bottle of beer on the wall"
  else
    puts "#{x} bottles of beer on the wall!"
    puts "#{x} bottles of beer!"
    puts "Take one down, pass it around,"
    puts "#{x - 1} bottles of beer on the wall"
  end
  puts "\n\n"
  x -= 1
end


