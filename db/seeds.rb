puts "seeding database, please wait..."

user = User.create!(
  username: "JonnyD",
  email: "jonnydanger@relive.com",
  first_name: "Jonny",
  last_name: "Danger",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

  Memory.create!(
        creator: user,
        name: "Swimming with sharks",
        description: "Experience swimming with sharks in the pacific while strapped to a kilos of beef",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: Faker::Nation.capital_city,
        category: "Swimming"
  )

  Memory.create!(
        creator: user,
        name: "Swimming with angry jellyfish",
        description: "Experience swimming with angry box jellyfish in the pacific ocean with some crazy cool deepsea lights",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: Faker::Nation.capital_city,
        category: "Swimming"
  )

user_1 = User.create!(
  username: "Shaquille.oatmeal",
  email: "shaquilleoatmeal@relive.com",
  first_name: "Shaquille",
  last_name: "Oatmeal",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

  memory_1 = Memory.create!(
        creator: user_1,
        name: "Winning the Tuna tossing championship",
        description: "If you ever wondered how much strength it takes to toss a living chunk of fish then this memory is for you",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: Faker::Nation.capital_city,
        category: Faker::Team.sport
  )

  Memory.create!(
        creator: user_1,
        name: "Come 2nd place in the Unicycle Hockey world-championship of 2020",
        description: "Nothing is as bitter-sweet as coming second place to the team you started your uni-hockey career with",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: Faker::Nation.capital_city,
        category: Faker::Team.sport
  )

user = User.create!(
  username: "Sweet-Cocoa",
  email: "sweetcocoapuffs@relive.com",
  first_name: "Saphire",
  last_name: "Smith",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

  Memory.create!(
        creator: user,
        name: "Fire Fyre-Fest 2017",
        description: "BEST.FESTIVAL.EVER! experience everything exciting about waiting for Fyre-Festival right until it started",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Exuma, The Bahamas",
        category: "Party"
  )

  Memory.create!(
        creator: user,
        name: "Party with Berlusconi",
        description: "Boonga-Boonga-Party!!! No one parties as hard as corrupt politicians from the Mediterranean",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Italy",
        category: "Party"
  )

  Memory.create!(
        creator: user,
        name: "Lines on rails",
        description: "Get in line and dance the conga until you drop by the train station!",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Melbourne",
        category: "Party"
  )

user_2 = User.create!(
  username: "SpaceCadet",
  email: "intergalacticcowboy@relive.com",
  first_name: "Neil",
  last_name: "Strongarm",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

  memory_2 = Memory.create!(
        creator: user_2,
        name: "Apollo 13",
        description: "Experience the launch that changed the world from the eyes of an Astronaut that was too late to the launch",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Nasa",
        category: "Space"
  )

  Memory.create!(
        creator: user_2,
        name: "Space X",
        description: "What's the difference between commercial space-travel and governmental one? THE SNACKS!!",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: Faker::Nation.capital_city,
        category: "Space"
  )

user_3 = User.create!(
  username: "Fluorescent.Adolesent",
  email: "pubertysucks@relive.com",
  first_name: "Timmy",
  last_name: "Strongarm",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password"
)

  Memory.create!(
        creator: user_3,
        name: "Acne at the disco!",
        description: "Why would this happen to you! Acne breakouts before your first high-school party with Jenny!?!? WHY YOU!!!",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Romania",
        category: "Space"
  )

  Memory.create!(
        creator: user_3,
        name: "Humid dreams",
        description: "You were warned about this happening, but why would it happen at your best friends house in your first sleepover?!?",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Spain",
        category: "Space"
  )


  memory_3 = Memory.create!(
        creator: user_3,
        name: "She's not my mum!",
        description: "Did you just call your teacher 'MUM'? Better start looking for a new school",
        price: Faker::Number.number(digits: 3),
        duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
        location: "Spain",
        category: "Space"
  )

puts "implanting fake memories"

start_date = Date.today + rand(-10..10)

3.times do
  Booking.create!(
    location: memory_1.location,
    status: false,
    start_date: start_date,
    end_date: start_date + rand(0..5),
    price: memory_1.price,
    customer: User.all.sample,
    memory: memory_1,
  )
  end

2.times do
  Booking.create!(
    location: memory_2.location,
    status: false,
    start_date: start_date,
    end_date: start_date + rand(0..5),
    price: memory_2.price,
    customer: User.all.sample,
    memory: memory_2,
  )
end

2.times do
  Booking.create!(
    location: memory_3.location,
    status: false,
    start_date: start_date,
    end_date: start_date + rand(0..5),
    price: memory_3.price,
    customer: User.all.sample,
    memory: memory_3,
  )
end

puts "Total Rekall!"

# 5.times do
#   user = User.create!(
#     username: Faker::Games::SuperSmashBros.unique.fighter,
#     email: Faker::Internet.unique.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     address: Faker::Address.street_address,
#     password: "password"
#   )

#   5.times do
#     memory = Memory.create!(
#       creator: user,
#       name: Faker::Games::Pokemon.unique.name,
#       description: Faker::Quote.famous_last_words,
#       price: Faker::Number.number(digits: 3),
#       duration: "#{rand(2..10)} #{%w(hours days weeks).sample}",
#       location: Faker::Nation.capital_city,
#       category: Faker::Team.sport
#     )
#     start_date = Date.today + rand(-10..10)
#     Booking.create!(
#       location: memory.location,
#       status: false,
#       start_date: start_date,
#       end_date: start_date + rand(0..5),
#       price: memory.price,
#       customer: User.all.sample,
#       memory: memory,
#     )
#   end
# end


