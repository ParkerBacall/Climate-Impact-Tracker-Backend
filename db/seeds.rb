# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
X.destroy_all
Y.destroy_all
UserGraph.destroy_all
Map.destroy_all



car = Map.create(name: 'Passenger Car Registraions Over Time')
clean_energy = Map.create(name: 'Renewable Energy Useage Over Time')
oil = Map.create(name: 'Crude Oil Prouction Over Time')



 filename = File.join Rails.root, "CarRegistration.csv"
 csv_text = File.read(filename)
 fuck = csv_text.split(/\n+/)
 fuck.each do |row|
    x = row.split(",")[5]
    x[0]=''
    x[-1]=''
    X.create(data: x, map_id: car.id)
    Y.create(data: row.split(",")[6].to_f + 687960, map_id: car.id)
 end



 filename = File.join Rails.root, "CrudeOil.csv"
 csv_text = File.read(filename)
 fuck = csv_text.split(/\n+/)
 fuck.each do |row|
    x = row.split(",")[5]
    x[0]=''
    x[-1]=''
    X.create(data: x, map_id: oil.id)
    Y.create(data: row.split(",")[6], map_id: oil.id)
 end

 filename = File.join Rails.root, "renewableEnergy.csv"
 csv_text = File.read(filename)
 fuck = csv_text.split(/\n+/)
 fuck.each do |row|
    x = row.split(",")[5]
    x[0]=''
    x[-1]=''
    X.create(data: x, map_id: clean_energy.id)
    Y.create(data: row.split(",")[6], map_id: clean_energy.id)
 end