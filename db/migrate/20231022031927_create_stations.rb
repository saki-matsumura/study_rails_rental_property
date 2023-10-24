class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station_name
      t.integer :minutes_on_foot
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
