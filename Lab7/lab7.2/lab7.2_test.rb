# frozen_string_literal: true

require_relative 'lab7.2_main.rb'
require 'minitest/autorun'

class Test < Minitest::Unit::TestCase
  def test_1_Point
    point = Point.new
    assert((point.is_a? Point), true)
  end

  def test_2_Circle
    circle = Circle.new
    assert((circle.is_a? Circle), true)
  end

  def test_3_Circle_Point
    assert(Circle < Point, true)
  end
end
