class AddImageToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :header_image, :binary, :limit => 10.megabyte
  end
end
