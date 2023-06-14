ActiveAdmin.register SiteImage do
     permit_params :name, :image
   
      show do
        attributes_table(:name, :image)
        panel "Image Preview" do
            image_tag site_image.image
        end
      end

      form do |f|
        f.inputs "Site Image" do
          f.input :name
          f.input :image, as: :file
        end
        f.actions
      end
end