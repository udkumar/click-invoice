class Product < ActiveRecord::Base

  belongs_to :category
  attr_accessible :category_id, :market_price, :name, :our_price, :product_code, :quantity
end
