class ShoppingItem < ActiveRecord::Base
  belongs_to :shopping_list
  #monetize :price
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :content, presence: true,  allow_blank: false

  def completed?
  	!completed.blank?
  end 

  def cost_by_user
  	ShoppingItem.group(:buyer).sum("price * quantity")
  end


  
end
