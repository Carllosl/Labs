# frozen_string_literal: true

class Point
  attr_accessor :coord_x, :coord_y

  def initialize(coord_x = 0, coord_y = 0)
    @coord_x = coord_x
    @coord_y = coord_y
  end

  def print_elements
    print "\nКоордината X = #{coord_x}, координата Y = #{coord_y}"
  end

  def get_point
    [coord_x, coord_y]
  end
end

class Circle < Point
  attr_accessor :radius

  def initialize(coord_x = 0, coord_y = 0, radius = 0)
    super(coord_x, coord_y)
    @radius = radius
  end

  def print_elements
    super
    print "\nРадиус = #{radius}\n"
  end
end
