# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hotels = Hotel.create([{title: 'The Dorchester', body: 'A super-duper lovely hotel on Park Lane.'}, {title: 'The Shangri-La', body: 'Hotel in the Shard. Very popular with the young elite.'}, {title: 'The Mandarin Oriental', body: 'Popular hotel in the heart of Knightsbridge. Commonly used for Jewish wedding parties.'}])
restaurants = Restaurant.create([{title: 'The York & Albany'}, {title: 'The Hawksmoor'}, {title: 'Cafe Med'}])
