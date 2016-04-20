class ChangeDataTypeFormatInQuantity < ActiveRecord::Migration
  def change
  	change_column :shopping_items, :quantity, :decimal
  end
end
