require_relative "roman_numeral"

describe RomanNumeral do
  describe "::new" do
    it { expect( described_class.new('I').to_i ).to eq(1) }
    it { expect( described_class.new('III').to_i ).to eq(3) }
    it { expect( described_class.new('IV').to_i ).to eq(4) }
    it { expect( described_class.new('V').to_i ).to eq(5) }
    it { expect( described_class.new('VII').to_i ).to eq(7) }
    it { expect( described_class.new('IX').to_i ).to eq(9) }
    it { expect( described_class.new('XC').to_i ).to eq(90) }
    it { expect( described_class.new('XVII').to_i ).to eq(17) }
  end
end
