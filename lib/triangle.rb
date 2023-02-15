class Triangle
  # write code here
  
  def initialize(height, base, hypo)
  @sides=[height, base, hypo]
  end
  def kind
    if(@sides.include?(0))
        raise TriangleError
    end
    if(@sides.find do |i| 
      i<0
    end)
    raise TriangleError
    end
    @sides.each.with_index do |s, i|
      if(@sides[i]>=(@sides[(i+1)%3]+@sides[(i+2)%3]))
        raise TriangleError
      end

    end

    if(@sides.uniq.length == 1)
      return :equilateral
    elsif(@sides.uniq.length ==2 )
      return :isosceles
    else
      return :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "you have an error"
    end
    
  end

end
