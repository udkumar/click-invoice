class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :quantity
      t.string :categogy_id
      t.string :product_code
      t.string :market_price
      t.string :our_price

      t.timestamps
    end
  end
end
