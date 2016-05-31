class AddAuthorToShoppingLists < ActiveRecord::Migration
  def change
    add_column :shopping_lists, :author, :string
  end
end
