require "./2018/01/chronal_calibration"

describe ChronalCalibration do
  describe "#combined_frequencies" do
    subject { described_class.new(input).combined_frequencies }

    context "where input is: +1, +1, +1" do
      let(:input) { [+1, +1, +1] }

      it { expect(subject).to eq(3) }
    end

    context "where input is: +1, +1, -2" do
      let(:input) { [+1, +1, -2] }

      it { expect(subject).to eq(0) }
    end

    context "where input is: -1, -2, -3" do
      let(:input) { [-1, -2, -3] }

      it { expect(subject).to eq(-6) }
    end

    context "Where input is the (default) file input.txt" do
      subject { described_class.new.combined_frequencies }
      it { expect(subject).to eq(0) }
    end
  end

  describe "#input" do
    subject { described_class.new.input }

    it { expect(subject).to all(be_an(Integer)) }
    it { expect(subject).to_not be_empty }
  end
end
