class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :description
      t.datetime :active_date
      t.datetime :inactive_date

      t.timestamps
    end
  end
end
