# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

bus_stop_path = Rails.root.to_s + "/db/csv_data/cta_bus_stops_oct12.csv"

csv_text = File.read(bus_stop_path)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Stop.create!(row.to_hash)
end

routes_path = Rails.root.to_s + "/db/csv_data/cta_bus_routes_oct12.csv"

csv_text = File.read(routes_path)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Route.create!(row.to_hash)
end

route_mapping_path = Rails.root.to_s + "/db/csv_data/cta_but_route_mapping_oct12.csv"

csv_text = File.read(route_mapping_path)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Routemapper.create!(row.to_hash)
end
