class CreateSiteImages < ActiveRecord::Migration[7.0]
  def change
    create_table :site_images do |t|
      t.string :name
      t.binary :image, :limit => 10.megabyte
      t.timestamps
    end
  end
end
