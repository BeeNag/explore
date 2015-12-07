# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hotels = Hotel.create([{title: 'The Dorchester'}, {title: 'The Shangri-La'}, {title: 'The Mandarin Oriental'}])
restaurants = Restaurant.create([{title: 'The York & Albany'}, {title: 'The Hawksmoor'}, {title: 'Cafe Med'}])
