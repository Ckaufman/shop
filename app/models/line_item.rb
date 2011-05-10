class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart
	
	def total_price
		product.price * quantity.to_i
	end
end
