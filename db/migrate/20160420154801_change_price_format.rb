class ChangePriceFormat < ActiveRecord::Migration
  def change
  	change_column :shopping_items, :price, :decimal
  end
end
