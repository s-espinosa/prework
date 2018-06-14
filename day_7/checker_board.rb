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
