class ChronalCalibration
  attr_reader :input

  def initialize(input = nil)
    @input = input || File.read("./2018/01/input.txt").split("\n").collect(&:to_i)
  end

  def combined_frequencies
    @input.inject(&:+)
  end
end
