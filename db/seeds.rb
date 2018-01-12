# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning started"
Profile.destroy_all
Document.destroy_all
puts "cleaning finished"

puts 'Create my profile'
user = User.create(
  email: "reginalddewasseige@gmail.com",
  password: "password",
  )
profile = Profile.create(
  first_name: "Réginald",
  last_name: "de Wasseige",
  user_id: user.id,
  admin: true,
  )
puts 'Finished!'

puts 'Creating users & profile...'
20.times do
  user_faker = User.create(
    email: Faker::Internet.email,
    password: "password",
  )
  profile = Profile.create!(
  first_name: Faker::Name.first_name ,
  last_name: Faker::Name.last_name,
  user_id: user.id,
  )
end
puts 'Finished!'

puts 'Creating projects...'
20.times do
  Document.create!(
    name: Faker::Company.name,
    text: Faker::Lorem.sentences,
  )
end
puts 'Finished!'
