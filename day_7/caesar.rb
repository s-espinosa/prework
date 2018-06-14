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


