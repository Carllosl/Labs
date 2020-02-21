# frozen_string_literal: true

require_relative('lab7.1_main.rb')
File.open('lib/f.txt', 'w') { |file_f| 100.times { file_f.print("#{rand(1000)} ") } }
puts 'Исходный файл F:'
File.open('lib/f.txt', 'r') { |file_f| puts file_f.read }
find 'lib/f.txt', 'lib/g.txt'
puts 'Файл G:'
File.open('lib/g.txt', 'r') { |file_g| puts file_g.read }
