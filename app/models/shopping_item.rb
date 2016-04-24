class ShoppingItem < ActiveRecord::Base
  belongs_to :shopping_list
  #monetize :price
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }

  def completed?
  	!completed.blank?
  end 
end
