class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :apartment_name
      t.integer :rent
      t.string :address
      t.integer :building_age
      t.text :remark

      t.timestamps
    end
  end
end
