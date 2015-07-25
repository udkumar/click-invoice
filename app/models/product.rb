class Product < ActiveRecord::Base

  belongs_to :category
  belongs_to :product_code
  attr_accessible  :category_id, :market_price, :name, :our_price, :product_code_id, :quantity
end
