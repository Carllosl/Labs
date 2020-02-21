# frozen_string_literal: true

require_relative 'lab7.2_main.rb'

puts 'Введите координату x:'
coord_x = gets.to_f
puts 'Введите координату y:'
coord_y = gets.to_f
puts 'Введите радиус:'
radius = gets.to_f
point = Point.new(coord_x, coord_y)
print "Класс Point метод print_elements:"
point.print_elements
print "\nКласс Point метод get_point:", point.get_point
circle = Circle.new(coord_x, coord_y, radius)
print "\nКласс Circle метод print_elements:"
circle.print_elements
