class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :name
      t.references :flight_routes, foreign_key: true
      t.integer :number_of_passengers
      t.boolean :arrived
      t.boolean :stocked
      t.boolean :clean

      t.timestamps
    end
  end
end
