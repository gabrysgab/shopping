class ShoppingItem < ActiveRecord::Base
  belongs_to :shopping_list

  def completed?
  	!completed.blank?
  end 
end
