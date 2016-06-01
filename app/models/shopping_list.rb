class ShoppingList < ActiveRecord::Base
	has_many :shopping_items

	def total_cost
		self.shopping_items.sum("price * quantity")
	end

	def cost_by_user
  		self.shopping_items.group(:buyer).sum("price * quantity")
 	end
	


end
