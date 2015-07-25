class ProductCode < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :product
  attr_accessible :code, :description
end
