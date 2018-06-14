def regular_verse(x)
  <<-VERSE
  #{x} bottles of beer on the wall!
  #{x} bottles of beer!
    Take one down, pass it around,
  #{x - 1} bottles of beer on the wall

  VERSE
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

def current_verse(x)
  # Fine if students use if. No need to introduce case.
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
  # Also fine if students put the conditional here instead of extracting a method.
  puts current_verse(x)
  x -= 1
end


