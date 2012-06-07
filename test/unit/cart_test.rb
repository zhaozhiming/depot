require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "cart add product " do
		cart = Cart.new
		current_item = cart.add_product(products(:ruby).id)

		assert_equal 49.50, current_item.price
		assert_equal 1, current_item.quantity


	end
end
