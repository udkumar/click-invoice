ActiveAdmin.register Product do
  filter :name

  index do
    column :product_code
    column :name 
    column :market_price
    column :our_price
    column :quantity
    column do |client|
      link_to("Details", admin_product_path(client)) + " | " + \
      link_to("Edit", edit_admin_product_path(client)) + " | " + \
      link_to("Delete", admin_product_path(client), :method => :delete, :confirm => "Are you sure?")
    end
  end

  show :title => :name do
    panel "Product Details" do
      attributes_table_for product do
        row("Product_Code") { product.product_code }
        row("Name") { mail_to product.name }
        row("Market_Price") { product.market_price }
        row("Our_Price") { product.our_price }
        row("Quantity") { product.quantity }
      end
    end
  end

  form do |f|
    f.inputs "Client" do
      f.input :product_code, :label => "Product Code"
      f.input :name, :label => "Product Name"
      f.input :market_price, :label => "Market Price"
      f.input :our_price, :label => "HapppyClub Price"
      f.input :quantity, :label => "Product Quantity"
    end
    f.buttons
  end

end
