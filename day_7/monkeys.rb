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


