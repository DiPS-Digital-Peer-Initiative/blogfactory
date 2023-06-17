ActiveAdmin.register Category do
     permit_params :string
   
      show do
        attributes_table(:string)
      end
end