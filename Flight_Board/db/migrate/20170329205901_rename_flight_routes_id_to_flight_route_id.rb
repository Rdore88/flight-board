class RenameFlightRoutesIdToFlightRouteId < ActiveRecord::Migration[5.0]
  def change
    rename_column :flights, :flight_routes_id, :flight_route_id
  end
end
