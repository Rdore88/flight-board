# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FlightRoute.create(
  origin: "DCA",
  destination: "ATL",
  distance: 547
)

FlightRoute.create(
  origin: "ATL",
  destination: "DCA",
  distance: 547
)

FlightRoute.create(
  origin: "DCA",
  destination: "LAX",
  distance: 2311
)

FlightRoute.create(
  origin: "LAX",
  destination: "DCA",
  distance: 2311
)
