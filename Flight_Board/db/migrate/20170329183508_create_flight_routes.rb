class CreateFlightRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :flight_routes do |t|
      t.string :destination
      t.string :origin
      t.integer :distance

      t.timestamps
    end
  end
end
