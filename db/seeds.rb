require 'open-uri'

puts "seeding database, please wait..."

user = User.create!(
  username: "not_a_robot",
  email: "example@relive.com",
  first_name: "Rick",
  last_name: "Deckard",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/c_fill,h_400,w_400/v1606419898/re:live/maximalfocus-naSAHDWRNbQ-unsplash_rpi26z.jpg'
  )

user_1 = User.create!(
  username: "JonnyD",
  email: "jonnydanger@relive.com",
  first_name: "Jonny",
  last_name: "Danger",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606284669/re:live/braxton-apana-Pn285aobxHg-unsplash_afppa5.jpg'
  )

  memory_1 = Memory.create!(
    creator: user_1,
    name: "Swimming with sharks",
    description: "Swim with a variety of sharks in the Pacific Ocean, from Black Tips to Great Whites",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: Faker::Nation.capital_city,
    category: "Swimming",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283983/re:live/gerald-schombs-GBDkr3k96DE-unsplash_luepxf.jpg'

  )

  memory_2 = Memory.create!(
    creator: user_1,
    name: "Jellyfish Light Show",
    description: "Have your very own underwater concert in a deep sea diving experience, surrounded by colourful Jellyfish, music not included",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: Faker::Nation.capital_city,
    category: "Swimming",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283977/re:live/vino-li-gGX1fJkmw3k-unsplash_lzrq4w.jpg'
  )

  user_4 = User.create!(
  username: "SpaceCadet",
  email: "intergalacticcowboy@relive.com",
  first_name: "Neil",
  last_name: "Strongarm",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606284678/re:live/levi-stute-mFF39sOZSgM-unsplash_vxe1k3.jpg'
)

  memory_8 = Memory.create!(
    creator: user_4,
    name: "Apollo 13",
    description: "Relive the era defining tragedy through the eyes of those closest to the event",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Nasa",
    category: "Space",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283994/re:live/history-in-hd-0B4BECR9nGM-unsplash_edukaf.jpg'
  )

  memory_9 = Memory.create!(
    creator: user_4,
    name: "Space X",
    description: "What's the difference between commercial space flight and a government one? THE SNACKS!!",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: Faker::Nation.capital_city,
    category: "Space",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283973/re:live/brian-mcgowan-I0fDR8xtApA-unsplash_tigux8.jpg'
  )



user_3 = User.create!(
  username: "Sweet-Cocoa",
  email: "sweetcocoapuffs@relive.com",
  first_name: "Saphire",
  last_name: "Smith",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606284679/re:live/mike-austin-oRVnmlBD4Vo-unsplash_uhl0iq.jpg'
)

  memory_5 =Memory.create!(
    creator: user_3,
    name: "Fyre Festival",
    description: "Ever wonder what it was like to be at the infamous Fyre Festival? Well wonder no more as you get to experience the full weekend experience, from fighting over tents to bartering for that last bottle of vodka, this memory has it all!",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Exuma, The Bahamas",
    category: "Survival",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283966/re:live/fyre_fest_bu33h0.jpg'
  )

  memory_6 =Memory.create!(
    creator: user_3,
    name: "Party with Berlusconi",
    description: "Party with Italian Prime Minister and all around legend Berlusconi! See how your tax dollars are spent as we party, politican style~",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Italy",
    category: "Party",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606419887/re:live/tony-reid-PGdMhonLLZk-unsplash_wus9lj.jpg'
  )

user_2 = User.create!(
  username: "Shaquille.oatmeal",
  email: "shaquilleoatmeal@relive.com",
  first_name: "Shaquille",
  last_name: "Oatmeal",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606284664/re:live/LeavnHQd_400x400_s6u9sj.jpg'
)

  memory_3 = Memory.create!(
    creator: user_2,
    name: "Winning the Tuna tossing championship",
    description: "Didn't know Tuna Tossing was a thing? Shame on you, but now you get a chance to see what it's like, and take home the trophy at the same time!",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: Faker::Nation.capital_city,
    category: Faker::Team.sport,
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283965/re:live/10760066-3x2-xlarge_plmuhp.jpg'
  )


user_5 = User.create!(
  username: "Fluorescent.Adolesent",
  email: "pubertysucks@relive.com",
  first_name: "Timmy",
  last_name: "Strongarm",
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address,
  password: "password",
  photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606360431/re:live/download_1_wbyggw.jpg'
)

  memory_10 = Memory.create!(
    creator: user_5,
    name: "Acne at the disco!",
    description: "Why would this happen to you! Acne breakouts before your first high-school party with Jenny!?!? WHY YOU!!!?",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Romania",
    category: "Space",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283973/re:live/teenAcne-824648588-650x450-650x428_rfjv7o.jpg'
  )

  memory_11 = Memory.create!(
    creator: user_5,
    name: "Humid dreams",
    description: "You were warned about this happening, but why would it happen to you at your best friends house? And in your first sleepover?!?",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Spain",
    category: "Space",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283981/re:live/ricardo-aguilera-YVkcShzKAPk-unsplash_vodicm.jpg'
  )

  memory_12 = Memory.create!(
    creator: user_5,
    name: "She's not my mum!",
    description: "Did you just call your teacher 'MUM'? Better start looking for a new school, experience the shame of commiting the ultimate Freudian Slip!",
    price: Faker::Number.number(digits: 3),
    duration: "#{rand(2..10)} #{%w(minutes hours days weeks).sample}",
    location: "Spain",
    category: "Space",
    photo_url: 'https://res.cloudinary.com/drdoomsday/image/upload/v1606283999/re:live/national-cancer-institute-N_aihp118p8-unsplash_fvmw6b.jpg'
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
puts "Downloading images"
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
