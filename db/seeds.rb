User.create!(
  username: "JonnyD",
  email: "jonnydanger@relive.com",
  first_name: "Jonny",
  last_name: "Danger",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

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
      name: Faker::Games::Pokemon.unique.name,
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
