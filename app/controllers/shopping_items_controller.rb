class ShoppingItemsController < ApplicationController
	before_action :set_shopping_list
	def create
		@shopping_item = @shopping_list.shopping_items.create(shopping_item_params)
		redirect_to @shopping_list
	end

	def destroy
		@shopping_item = @shopping_list.shopping_items.find(params[:id])
		if @shopping_item.destroy
			flash[:succes] = "Shopping item was deleted"
		else
			flash[:error] = "Shopping item could not be deleted"
		end
		redirect_to @shopping_list
	end

	private

	def set_shopping_list
		@shopping_list = ShoppingList.find(params[:shopping_list_id])
	end

	def shopping_item_params
		params[:shopping_item].permit(:content, :buyer, :quantity, :price)
	end

end
