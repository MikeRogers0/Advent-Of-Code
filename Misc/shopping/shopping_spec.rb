require_relative "shopping"

describe Shopping do
  describe "::get_number_of_options" do
    subject do
      described_class.get_number_of_options(
            price_of_jeans: [2,3],
            price_of_shoes: [4],
            price_of_skirts: [2,3],
            price_of_tops: [1,2],
            dollars: 10
      )
    end

    it do
      expect(subject).to eq([[2, 4, 2, 1], [2, 4, 2, 2], [2, 4, 3, 1], [3, 4, 2, 1]])
    end
  end
end
