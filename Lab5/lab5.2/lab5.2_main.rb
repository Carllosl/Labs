# frozen_string_literal: true

def function(str)
  num = 0
  str2 = ''
  arr = %w[A E I O U a e i o u]
  str.split.map do |s|
    s.chars.find { |char| !arr.find { |arr_char| char == arr_char }.nil? } ? (str2 = str2 + s + ' ') : (num += 1)
  end
  [str2, num]
end
