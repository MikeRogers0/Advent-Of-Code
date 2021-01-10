class ChronalCalibration
  FILE_INPUT = File.read("./2018/01/input.txt").split("\n").collect(&:to_i)

  # Starting with a frequency of zero,
  # what is the resulting frequency after all of the changes in frequency have been applied?
  def self.part_one
    new(FILE_INPUT).combined_frequencies
  end

  # What is the first frequency your device reaches twice?
  def self.part_two
    new(FILE_INPUT).frequency_device_reaches_twice
  end

  def initialize(input)
    @input = input
  end

  def combined_frequencies
    @input.inject(&:+)
  end

  def frequency_device_reaches_twice
    @frequency_log = {}
    @fequency_total = 0

    # We loop over the list a until it lands on the same frequency twice.
    while(true) do
      @input.each do |frequency_change|
        if @frequency_log[@fequency_total]
          return @fequency_total
        end

        @frequency_log[@fequency_total] = true

        @fequency_total += frequency_change

      end
    end
  end
end
