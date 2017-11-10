class Triangle
  attr_accessor :sides
  def initialize(a, b, c)
      sides = [a, b, c].sort
  end

  def kind
    if size[0] <= 0 || sides[0] + sides[1] <= sides[3]
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error
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

end
