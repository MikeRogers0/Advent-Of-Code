class RomanNumeral
  CONVERSIONS = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  }

  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def to_i
    input_as_integer_with_modifiers.sum
  end

  private

  # When our input is: IIV
  #  It returns values like:
  # [-1, -1, 5]
  def input_as_integer_with_modifiers
    input_as_literal_integers.each_with_index do |value, index|
      next unless input_as_literal_integers[index + 1]
      next unless input_as_literal_integers[index + 1] > input_as_literal_integers[index]

      input_as_literal_integers[index] = input_as_literal_integers[index] * -1
    end
  end

  # Convert values like V & X, to 5 & 10
  def input_as_literal_integers
    @input_as_literal_integers ||= input.upcase.chars.collect { |letter| CONVERSIONS[letter.to_sym] }
  end
end
