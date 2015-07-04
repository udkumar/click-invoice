ActiveAdmin.register Category do

 filter :name

  index do
    column :id
    column :name
    default_actions
  end

end
