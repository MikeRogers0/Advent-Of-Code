require "./2018/01/chronal_calibration"

describe ChronalCalibration do
  describe "::part_one" do
    subject { described_class.part_one }

    it { expect(subject).to eq(497) }
  end

  describe "::part_two" do
    pending
    subject { described_class.part_two }

    #it { expect(subject).to eq(nil) }
  end

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

  describe "#frequency_device_reaches_twice" do
    subject { described_class.new(input).frequency_device_reaches_twice }

    context "where input is: +1, -1" do
      let(:input) { [+1, -1] }

      it { expect(subject).to eq(0) }
    end

    context "where input is: +3, +3, +4, -2, -4" do
      let(:input) { [+3, +3, +4, -2, -4] }

      it { expect(subject).to eq(10) }
    end

    context "where input is: -6, +3, +8, +5, -6" do
      let(:input) { [-6, +3, +8, +5, -6] }

      it { expect(subject).to eq(5) }
    end

    context "where input is: +7, +7, -2, -7, -4" do
      let(:input) { [+7, +7, -2, -7, -4] }

      it { expect(subject).to eq(14) }
    end
  end
end
