class Triangle
  attr_accessor :sides
  def initialize(a, b, c)
      @sides = [a, b, c].sort
  end

  def kind
    puts sides[0] <= 0
    if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif sides[0] == sides[2]
      return :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Invalid triangle"
  end
end
