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

