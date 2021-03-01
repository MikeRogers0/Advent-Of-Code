class FunMath
  def initialize(input = nil)
    @input = input
  end

  def input
    @input
  end

  def input=(value)
    @input = value
  end

  def valid?
    input_is_present? && input_is_integer?
  end

  def half_of_other_input
    other_input / 2
  end

  private

  def other_input
    99
  end

  def input_is_present?
    !input.nil? && input != ''
  end

  def input_is_integer?
    input.is_a?(Integer)
  end
end
