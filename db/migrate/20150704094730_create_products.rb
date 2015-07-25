class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :quantity
      t.integer :category_id
      t.integer :product_code_id
      t.string :market_price
      t.string :our_price

      t.timestamps
    end
  end
end
