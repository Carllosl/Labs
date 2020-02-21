# frozen_string_literal: true

def find(file_name_f, file_name_g)
  File.open(file_name_f, 'r') do |file_f|
    File.open(file_name_g, 'w') do |file_g|
      file_f.read.split.select { |number| (number.to_i % 3).zero? && (number.to_i % 7 != 0) }.map { |number| file_g.print("#{number} ") }
    end
  end
end
