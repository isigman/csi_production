ActiveAdmin.register Tag do
  permit_params :name
  index do
    selectable_column
    id_column
    column :name
    column :count
    actions
  end

  form do |f|
    f.inputs do
      f.input :name, :as => :string
    end
    f.actions
  end
end
