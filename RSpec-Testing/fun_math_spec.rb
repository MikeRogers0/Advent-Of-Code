require_relative "fun_math"

describe FunMath do
  describe "#input" do
    it "returns the value of input" do
      expect(described_class.new(34).input).to eq(34)
    end
  end

  describe "#input=" do
    it "Updates the value of #input" do
      instance = described_class.new(34)
      expect { instance.input = 24 }.to change{ instance.input }.from(34).to(24)
    end
  end

  describe "#valid?" do
    it "with invalid input, returns false" do
      expect(described_class.new("A naughty string").valid?).to eq(false)
    end

    it "with no input, returns false" do
      expect(described_class.new.valid?).to eq(false)
    end

    it "with valid input, returns true" do
      expect(described_class.new(34).valid?).to eq(true)
    end
  end

  describe "#half_of_other_input" do
    let(:instance) { described_class.new(34) }
    it do
      allow(instance).to receive(:other_input).and_return(44)

      expect(instance.half_of_other_input).to eq(22)
    end
  end
end
