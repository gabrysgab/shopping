class AddCompletedToShoppingItems < ActiveRecord::Migration
  def change
    add_column :shopping_items, :completed, :datetime
  end
end
