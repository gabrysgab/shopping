class CreateShoppingItems < ActiveRecord::Migration
  def change
    create_table :shopping_items do |t|
      t.string :content
      t.string :buyer
      t.integer :quantity
      t.integer :price
      t.references :shopping_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
