class Shopping
  # Returns the prices of items, so user can have at least one of every item
  def self.get_number_of_options(
    price_of_jeans:,
    price_of_shoes:,
    price_of_skirts:,
    price_of_tops:,
    dollars:
  )

    potential_arrays = []

    price_of_jeans.each do |price_of_jean|
      price_of_shoes.each do |price_of_shoe|
        price_of_skirts.each do |price_of_skirt|
          price_of_tops.each do |price_of_top|
            potential_arrays << [price_of_jean, price_of_shoe, price_of_skirt, price_of_top]
          end
        end
      end
    end

    potential_arrays.reject { |array| array.sum > dollars }
  end
end
