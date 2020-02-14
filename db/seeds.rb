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
water = Map.create(name: 'Total Water Usage for U.S. in Billions of Gallons per Day')
recycling = Map.create(name: 'Percentage of Waste Recycled and composted in the US per Year')


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

 

 X.create(data: 1950, map_id: water.id)
 Y.create(data: 185, map_id: water.id)

 X.create(data: 1955, map_id: water.id)
 Y.create(data: 246, map_id: water.id)

 X.create(data: 1960, map_id: water.id)
 Y.create(data: 271, map_id: water.id)
 
 X.create(data: 1965, map_id: water.id)
 Y.create(data: 270, map_id: water.id)

 X.create(data: 1970, map_id: water.id)
 Y.create(data: 372, map_id: water.id)

 X.create(data: 1975, map_id: water.id)
 Y.create(data: 412, map_id: water.id)

 X.create(data: 1980, map_id: water.id)
 Y.create(data: 435, map_id: water.id)

 X.create(data: 1985, map_id: water.id)
 Y.create(data: 398, map_id: water.id)

 X.create(data: 1990, map_id: water.id)
 Y.create(data: 403, map_id: water.id)
 
 X.create(data: 1995, map_id: water.id)
 Y.create(data: 398, map_id: water.id)

 X.create(data: 2000, map_id: water.id)
 Y.create(data: 416, map_id: water.id)

 X.create(data: 2005, map_id: water.id)
 Y.create(data: 410, map_id: water.id)

 X.create(data: 2010, map_id: water.id)
 Y.create(data: 355, map_id: water.id)

 X.create(data: 2015, map_id: water.id)
 Y.create(data: 322, map_id: water.id)

 X.create(data: 1960, map_id: recycling.id)
 Y.create(data: 6.4, map_id: recycling.id)

 X.create(data: 1965, map_id: recycling.id)
 Y.create(data: 6.2, map_id: recycling.id)

 X.create(data: 1970, map_id: recycling.id)
 Y.create(data: 6.6, map_id: recycling.id)

 X.create(data: 1975, map_id: recycling.id)
 Y.create(data: 7.3, map_id: recycling.id)

 X.create(data: 1980, map_id: recycling.id)
 Y.create(data: 9.6, map_id: recycling.id)

 X.create(data: 1985, map_id: recycling.id)
 Y.create(data: 10.1, map_id: recycling.id)

 X.create(data: 1990, map_id: recycling.id)
 Y.create(data: 16, map_id: recycling.id)

 X.create(data: 1995, map_id: recycling.id)
 Y.create(data: 25.7, map_id: recycling.id)

 X.create(data: 2000, map_id: recycling.id)
 Y.create(data: 28.5, map_id: recycling.id)

 X.create(data: 2005, map_id: recycling.id)
 Y.create(data: 31.4, map_id: recycling.id)

 X.create(data: 2010, map_id: recycling.id)
 Y.create(data: 34, map_id: recycling.id)

 X.create(data: 2015, map_id: recycling.id)
 Y.create(data: 34.7, map_id: recycling.id)

 X.create(data: 2016, map_id: recycling.id)
 Y.create(data: 35.1, map_id: recycling.id)

 X.create(data: 2017, map_id: recycling.id)
 Y.create(data: 35.2, map_id: recycling.id)



