# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
puts "creating User"
40000.times do |n|
  User.create(
    :name  => Faker::Name.name.to_s, 
    :country => Faker::Address.country.to_s, 
    :age => rand(10...63)
  	)
end
puts "end creating users"