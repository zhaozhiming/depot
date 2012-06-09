require 'test_helper'

class CartTest < ActiveSupport::TestCase

  test "cart add one product correct" do
		cart = Cart.new
		current_item = cart.add_product(products(:ruby).id)

		assert_equal 1, current_item.quantity
		assert_equal 49.50, current_item.price
		assert_equal 1, cart.line_items.size
		assert_equal 49.50, cart.total_price
	end

  test "cart add same product correct" do
		cart = Cart.new
		cart.add_product(products(:ruby).id)
		current_item = cart.add_product(products(:ruby).id)

		assert_equal 1, current_item.quantity
		assert_equal 49.50, current_item.price
		assert_equal 2, cart.line_items.size
		assert_equal 99.00, cart.total_price
	end

  test "cart add different product correct" do
		cart = Cart.new
		cart.add_product(products(:ruby).id)
		current_item = cart.add_product(products(:one).id)

		assert_equal 1, current_item.quantity
		assert_equal 9.99, current_item.price
		assert_equal 2, cart.line_items.size
		assert_equal 59.49, cart.total_price
	end

end
