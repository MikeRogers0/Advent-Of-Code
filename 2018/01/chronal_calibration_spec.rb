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
  end

  describe "::part_one" do
    subject { described_class.part_one }

    it { expect(subject).to eq(497) }
  end
end
