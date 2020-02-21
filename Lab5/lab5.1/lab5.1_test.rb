# frozen_string_literal: true

require_relative 'lab5.1_main.rb'
require 'minitest/autorun'
class Test < MiniTest::Unit::TestCase
  def test_1
    x = Math::PI / 6
    y = Math::PI
    res = 4
    assert_in_delta(res, func(x, y), delta = 0.01, msg = 'x=PI/6, y=PI')
  end

  def test_2
    x = Math::PI / 2
    y = 0
    res = 2
    assert_in_delta(res, func(x, y), delta = 0.01, msg = 'x=PI/2 y=0')
  end

  def test_3
    x = Math::PI / 6
    y = 0
    res = 4
    assert_in_delta(res, func(x, y), delta = 0.01, msg = 'x=PI/6, y=0')
  end
end
