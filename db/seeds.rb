# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Idea.destroy_all

idea = Idea.new
idea.name = "Rohan Sinha"
idea.description = "Awesome idea!"
idea.save

idea2 = Idea.new
idea2.name = "Roberto Claure"
idea2.description = "How to ask out girls"
idea2.save

puts "2 ideas created"

