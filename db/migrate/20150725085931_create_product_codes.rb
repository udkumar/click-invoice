class CreateProductCodes < ActiveRecord::Migration
  def change
    create_table :product_codes do |t|
      t.string :code
      t.text :description
      t.timestamps
    end
  end
end
