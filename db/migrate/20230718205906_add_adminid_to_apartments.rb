class AddAdminidToApartments < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :admin_id, :string
  end
end
