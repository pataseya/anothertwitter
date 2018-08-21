# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Generating my user"
u = User.find_or_create_by(username: "pitty")

u.update_attributes({
    first_name: "Pat",
    last_name:  "Camp",
    city:       "Columbus",
    state:      "Ohio",
    bio:        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
    fake:       false,
    email:      "pat@pat.com",
    password:   "123456",
    password_confirmation: "123456",

  })

  u.save!


  puts "deleting fake users"
  User.where(fake: true).destroy_all

  puts "generating fake users\n"
  10.times do
    putc "."
    User.create!({
      username:   Faker::Internet.username,
      first_name: Faker::Name.first_name,
      last_name:  Faker::Name.last_name,
      city:       Faker::Address.city,
      state:      Faker::Address.state_abbr,
      bio:        Faker::Lorem.paragraph,
      fake:       true,
      email:      Faker::Internet.email,
      password:   "123456",
      password_confirmation: "123456",

      })
  end

  puts "done"
