ActiveAdmin.register ActiveAdminSetting do
     permit_params :name, :string
   
     show do
       attributes_table(:name, :string)
     end
end