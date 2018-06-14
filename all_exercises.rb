puts "--------DAY 1---------"
puts "Required Understandings:"
puts "* variables"
puts "* loops"
puts "* integer math"
puts "\n"

x = 5

until x == 0
  puts x
  x -= 1
end

puts "\n\n"

puts "--------DAY 2---------"
puts "Required Understandings:"
puts "* strings and string interpolation"
puts "\n"

x = 5

until x == 0
  puts "#{x} bottles of beer on the wall!"
  puts "#{x} bottles of beer!"
  puts "Take one down, pass it around,"
  puts "#{x - 1} bottles of beer on the wall"
  puts "\n\n"
  x -= 1
end


puts "--------DAY 3---------"
puts "Required Understandings:"
puts "* conditionals"
puts "\n"

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


puts "--------DAY 4---------"
puts "Required Understandings:"
puts "* methods"
puts "\n"

x = 5

def verse_for_one
  <<-VERSE
    1 bottle of beer on the wall!
    1 bottle of beer!
    Take it down, pass it around,
    No more bottles of beer on the wall

  VERSE
end

def verse_for_two
  <<-VERSE
    2 bottles of beer on the wall!
    2 bottles of beer!
    Take one down, pass it around,
    1 bottle of beer on the wall

  VERSE
end

def regular_verse(x)
  <<-VERSE
  #{x} bottles of beer on the wall!
  #{x} bottles of beer!
    Take one down, pass it around,
  #{x - 1} bottles of beer on the wall

  VERSE
end

until x == 0
  if x == 1
    puts verse_for_one
  elsif x == 2
    puts verse_for_two
  else
    puts regular_verse(x)
  end
  x -= 1
end

# FURTHER REFACTOR
puts "\n"
puts "**Refactored Version**\n\n"

def current_verse(x)
  case x
  when 1
    verse_for_one
  when 2
    verse_for_two
  else
    regular_verse(x)
  end
end

x = 5

until x == 0
  puts current_verse(x)
  x -= 1
end

puts "--------DAY 5---------"
puts "Required Understandings:"
puts "* classes"
puts "\n"

class Bottles
  def initialize
    @current_count = 5
  end

  def sing
    until @current_count == 0
      print_verse
      @current_count -= 1
    end
  end

  private
  def print_verse
    puts current_verse
  end

  def current_verse
    case @current_count
    when 1
      verse_for_one
    when 2
      verse_for_two
    else
      regular_verse
    end
  end

  def verse_for_one
    <<-VERSE
    1 bottle of beer on the wall!
    1 bottle of beer!
    Take it down, pass it around,
    No more bottles of beer on the wall

    VERSE
  end

  def verse_for_two
    <<-VERSE
    2 bottles of beer on the wall!
    2 bottles of beer!
    Take one down, pass it around,
    1 bottle of beer on the wall

    VERSE
  end

  def regular_verse
    <<-VERSE
    #{@current_count} bottles of beer on the wall!
    #{@current_count} bottles of beer!
    Take one down, pass it around,
    #{@current_count - 1} bottles of beer on the wall

    VERSE
  end
end


b = Bottles.new
b.sing



puts "--------DAY 6---------"
puts "Required Understandings:"
puts "* arrays"
puts "\n"


class OldMan
  def initialize
    @current_count = 1
    @rhymes        = ["on my drum",
                      "on my shoe",
                      "on my knee",
                      "on my door",
                      "on my hive",
                      "on my sticks",
                      "up in heaven",
                      "on my gate",
                      "on my spine",
                      "once again"]
  end

  def sing
    until @current_count == 11
      puts current_verse
      @current_count += 1
    end
  end

  def current_rhyme
    @rhymes[@current_count - 1]
  end

  def current_verse
    <<-VERSE
This old man, he played #{@current_count},
He played knick-knack #{current_rhyme};
With a knick-knack paddywhack,
Give a dog a bone,
This old man came rolling home.

    VERSE
  end
end

o = OldMan.new
o.sing


puts "--------DAY 7---------"
puts "Build Some Projects!"
puts "\n"

class Monkeys
  def initialize
    @monkey_count = 5
  end

  def sing
    while @monkey_count >= 0
      puts current_verse
      @monkey_count -= 1
    end
  end

  def current_verse
    case @monkey_count
    when 0
      zero_verse
    when 1
      one_verse
    else
      generic_verse
    end
  end

  def generic_verse
    <<-VERSE
    #{@monkey_count} little monkies jumping on the bed,
One fell down and bumped his head,
Mama called the doctor and the doctor said,
"No more monkeys jumping on the bed!"

    VERSE
  end

  def one_verse
    <<-VERSE
One little monkey jumping on the bed,
He fell down and bumped his head,
Mama called the doctor and the doctor said,
"No more monkeys jumping on the bed!"

    VERSE
  end

  def zero_verse
    <<-VERSE
No little monkies jumping on the bed,
None fell down and bumped his head,
Mama called the doctor and the doctor said,
"Put those monkeys right to bed!"


    VERSE
  end
end

m = Monkeys.new
m.sing


class FizzBuzz
  def initialize
    @current_count = 1
  end

  def print
    while @current_count <= 15
      puts current_value
      @current_count += 1
    end
  end

  def current_value
    return_string = ""
    return_string << "Fizz" if @current_count % 3 == 0
    return_string << "Buzz" if @current_count % 5 == 0
    return_string << @current_count.to_s if return_string == ""
    return_string
  end
end

f = FizzBuzz.new
f.print


class Caesar
  def encode(original_phrase, offset)
    letters         = original_phrase.upcase.split("")
    encoded_letters = letters.map do |letter|
      encode_letter(letter, offset)
    end
    encoded_letters.join("")
  end

  def encode_letter(letter, offset)
    return letter if letters.include?(letter) == false
    original_index = letters.find_index(letter)
    new_index      = (original_index + offset) % 26
    letters[new_index]
  end

  def letters
    @letters ||= ("A".."Z").to_a
  end
end

puts Caesar.new.encode("Hello everybody!", 25)


class CheckerBoard
  def initialize(size)
    @size = size
  end

  def print_board
    board = ""
    @size.times do |index|
      if index.odd?
        board += create_odd_row
      else
        board += create_even_row
      end
    end
    puts board
  end

  def create_odd_row
    row = ""
    @size.times do |index|
      if index.odd?
        row += "X"
      else
        row += " "
      end
    end
    row += "\n"
    row
  end

  def create_even_row
    row = ""
    @size.times do |index|
      if index.odd?
        row += " "
      else
        row += "X"
      end
    end
    row += "\n"
    row
  end
end

b = CheckerBoard.new(6)
b.print_board
