class ChronalCalibration
  attr_reader :input

  # Starting with a frequency of zero,
  # what is the resulting frequency after all of the changes in frequency have been applied?
  def self.part_one
    input = File.read("./2018/01/input.txt").split("\n").collect(&:to_i)
    new(input).combined_frequencies
  end

  def initialize(input)
    @input = input
  end

  def combined_frequencies
    @input.inject(&:+)
  end
end
