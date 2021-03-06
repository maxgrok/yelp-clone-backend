# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beachhouse = Property.create(name: Faker::Name.unique.name, description: Faker::Company.unique.bs, address: Faker::Address.unique.street_address,phone_number: Faker::PhoneNumber.unique.cell_phone,website: Faker::Internet.unique.url)

review = Review.create(title: "Five Guys Was Awesome", content: "Best french fries ever!", property_id: beachhouse.id)