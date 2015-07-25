ActiveAdmin.register ProductCode do
  index do
    column :code
    column :description 
    column do |client|
      link_to("Details", admin_product_code_path(client)) + " | " + \
      link_to("Edit", edit_admin_product_code_path(client)) + " | " + \
      link_to("Delete", admin_product_code_path(client), :method => :delete, :confirm => "Are you sure?")
    end
  end

  form do |f|
    f.inputs "Product Code" do
      f.input :code, :label => "Product code"
      f.input :description, :label => "Description"
    end
    f.buttons
  end
end
