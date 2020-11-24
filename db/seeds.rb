# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


alex = User.new(username: 'a', email: 'email@email.com', first_name: 'alex', last_name: 'kelso', phone_number: 12345678, address: '123 Fake Street', password: 'abcdefgh')
alex.save!

memory = Memory.new(name: 'running on the moon', description: 'literally running on the moon', price: 10, duration: '10 minutes', location: 'the moon', category: 'adventure', creator: alex)
memory.save!