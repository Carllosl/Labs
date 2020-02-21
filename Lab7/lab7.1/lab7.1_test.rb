# frozen_string_literal: true

require_relative('lab7.1_main.rb')
require 'minitest/autorun'

class Test < Minitest::Unit::TestCase
  def test_1_file_exist
    assert(File.exist?('lib/f.txt') && File.exist?('lib/g.txt'), true)
  end

  def test_2_mod_3
    File.open('lib/f.txt', 'w+') do |file_f|
      100.times { file_f.print("#{3 * rand(6) * rand(6)} ") }
      find 'lib/f.txt', 'lib/g.txt'
      File.open('lib/g.txt', 'r') { |file_g| assert(file_g.read, file_f.read) }
    end
  end

  def test_3_mod_7
    File.open('lib/f.txt', 'w+') do |file_f|
      100.times { file_f.print("#{7 * rand(100)} ") }
      find 'lib/f.txt', 'lib/g.txt'
      File.open('lib/g.txt', 'r') { |file_g| assert(file_g.read, '') }
    end
  end
end
