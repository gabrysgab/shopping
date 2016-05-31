class ShoppingItemsController < ApplicationController
	before_action :set_shopping_list
  before_action :set_shopping_item, except: [:create]

 def create
    @shopping_item = @shopping_list.shopping_items.new(shopping_item_params)
    @shopping_item.buyer = current_user.first_name + ' ' + current_user.last_name
    if @shopping_item.save
      redirect_to @shopping_list
      else
        render 'shopping_lists/show'
      end
  end



	def destroy
		if @shopping_item.destroy
			flash[:succes] = "Shopping item was deleted"
		else
			flash[:error] = "Shopping item could not be deleted"
		end
		redirect_to @shopping_list
	end



  def complete
    @shopping_item.update_attribute(:completed, Time.now)
    redirect_to @shopping_list, notice: "Item shopping completed!"
  end

	private

	def set_shopping_list
		@shopping_list = ShoppingList.find(params[:shopping_list_id])
	end

  def set_shopping_item
    @shopping_item = @shopping_list.shopping_items.find(params[:id])
  end

	def shopping_item_params
		params[:shopping_item].permit(:content, :quantity, :price)
	end



end
