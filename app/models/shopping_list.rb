class ShoppingList < ActiveRecord::Base
	has_many :shopping_items

	def total_cost
		self.shopping_items.sum("price * quantity")
	end
end
