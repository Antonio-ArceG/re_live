# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating 20 fake users..."
20.times do
  user = User.create!(
    username: Faker::Games::SuperSmashBros.unique.fighter,
    email: Faker::Internet.unique.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_address,
    password: "password"
  )

  5.times do
    Memory.create!(
      creator: user,
      uniquename: Faker::Games::Pokemon.unique.name,
      description: Faker::Quote.famous_last_words,
      price: Faker::Number.number(digits: 3),
      duration: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      location: Faker::Nation.capital_city,
      category: Faker::Team.sport
    )
  end
end

puts "Finished!"
puts "implanting fake memories"


puts "Total Rekall!"
