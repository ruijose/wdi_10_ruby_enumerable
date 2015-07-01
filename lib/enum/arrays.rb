class Array

  def sum_of_numeric_elements
    select { |element| element.is_a? Numeric }.inject(:+)
  end

  def product_of_numeric_elements
    select { |element| element.is_a? Numeric }.inject(:*)
  end

  def even_numeric_elements
    select { |element| element.is_a? Integer }.select { |number| number.even? }
  end

  def odd_numeric_elements
    select { |element| element.is_a? Integer }.select { |number| number.odd? }
  end

  def string_elements
    select { |element| element.is_a? String }
  end

  def lowercase_string_elements_as_uppercase
    select { |el| el.is_a? String }.select { |word| ('a'..'z').include? word.chars.first }.map(&:capitalize)
  end

  def capitalized_elements
    select { |el| el.is_a? String }.select { |word| ('A'..'Z').include? word.chars.first }
  end

end
