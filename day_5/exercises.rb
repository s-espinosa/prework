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

