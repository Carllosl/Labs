# frozen_string_literal: true

require_relative 'lab5.2_main.rb'
require 'test/unit'

class MyTest < Test::Unit::TestCase
  def rand_word
    str = ''
    rand(1..8).times { str += rand(33..122).chr }
    str
  end

  def rand_string
    str_rand = ''
    str_without_vowel = ''
    rand(5..14).times do
      word = rand_word
      num = function(word)[1]
      if num.zero?
        str_rand += (word + ' ')
      else
        str_without_vowel += (word + ' ')
        str_rand += (word + ' ')
        @num_final += 1
      end
    end
    @text_rand += (str_rand + "\n") if str_rand != ''
    @text_without_vowel += (str_without_vowel + "\n") if str_without_vowel != ''
  end

  def setup
    @num_final = 0
    @text_rand = ''
    @text_without_vowel = ''
    rand(1..5).times { rand_string }
  end

  def test_001_random_text
    num_final_rand = 0

    @text_rand.split("\n").map do |str_in_text|
      num = function(str_in_text)[1]
      num_final_rand += num
    end
    assert_equal(num_final_rand, @num_final)
  end

  def test_002_without_vowel_text
    num_final_without = 0
    @text_without_vowel.split("\n").map do |str_in_text|
      (function(str_in_text)[0]).split.map { num_final_without += 1 }
    end
    assert_equal(num_final_without, 0)
  end
end
