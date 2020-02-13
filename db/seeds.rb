# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
Map.destroy_all
X.destroy_all


 filename = File.join Rails.root, "CarRegistration.csv"
 csv_text = File.read(filename)
 fuck = csv_text.split(/\n+/)
 fuck.each do |row|
    puts row.split(",")[5]
 end




Map.create(name: 'Renewable Energy Useage Over Time')
Map.create(name: 'Passenger Car Registraions Over Time')

