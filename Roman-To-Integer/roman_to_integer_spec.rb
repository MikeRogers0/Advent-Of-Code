require_relative "roman_to_integer"

describe RomanToInteger do
  describe "::to_i" do
    it { expect( described_class.to_i('I') ).to eq(1) }
    it { expect( described_class.to_i('III') ).to eq(3) }
    it { expect( described_class.to_i('IV') ).to eq(4) }
    it { expect( described_class.to_i('V') ).to eq(5) }
    it { expect( described_class.to_i('VII') ).to eq(7) }
    it { expect( described_class.to_i('IX') ).to eq(9) }
    it { expect( described_class.to_i('XC') ).to eq(90) }
    it { expect( described_class.to_i('XVII') ).to eq(17) }
  end
end
