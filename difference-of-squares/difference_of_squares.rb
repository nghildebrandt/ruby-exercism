module BookKeeping
  VERSION = 3
end 

class Squares
  def initialize(number)
    @number = number
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    (0..@number).inject { |sum, item| (sum + item) } ** 2
  end

  def sum_of_squares
    (0..@number).inject { |sum, item| (sum + item ** 2 ) }
  end
end
