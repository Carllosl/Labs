# frozen_string_literal: true

require_relative 'lab5.2_main.rb'
print "Введите число строк\n"
str_initial = ''
str_final = ''
num_final = 0
n = gets.to_i
n.times do
  print "\nВведите строку\n"
  str = gets
  str_initial += str
  str_after_function = function(str)[0]
  num = function(str)[1]
  str_final = str_final + str_after_function + "\n"
  if num.zero?
    print "В только что введенной строке слова без гласных букв отсутствовали\n"
  end
  num_final += num
end
print "\nИсходная последовательность строк:\n", str_initial
print "\nПоследовательность строк после обработки:\n", str_final
print "\nКоличество удаленных слов = #{num_final}\n\n"
