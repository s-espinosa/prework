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


