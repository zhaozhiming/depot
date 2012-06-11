class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :quantity, :price

	belongs_to	:product
	belongs_to :cart

	def total_price
		price * quantity
	end

	def decrement_quantity(line_item_id)
		@current_item = LineItem.find(line_item_id)

		if @current_item.quantity > 1
			@current_item.quantity -= 1
		else 	
			@current_item.destroy
		end

		@current_item
	end
end
