# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rant.delete_all
User.delete_all

user0 = User.create!(first_name: "Betty", last_name: "White", email: "white@example.com", password: "pass", password_confirmation: "pass")
user1 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user2 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user3 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user4 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user5 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user6 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user7 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user8 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user9 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user10 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password")

rant1 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n"), user: user1 )
rant2 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n"), user: user10 )
rant3 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n"), user: user3 )
rant4 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n"), user: user1 )
rant5 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n"), user: user0 )
