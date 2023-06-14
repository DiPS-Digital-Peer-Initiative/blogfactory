class CreateActiveAdminSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :active_admin_settings do |t|
      t.string :name
      t.text   :string

      t.timestamps
    end
  end
end
