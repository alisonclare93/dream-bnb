# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

Dream.destroy_all
User.destroy_all

# Creates 50 random users
50.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Artist.name
  )
end


# Creates dreams of various kinds
5.times do
  animal = Faker::Creature::Animal.name
  dream = Dream.new(
    name: "#{animal} for a day",
    description: "Live your wildest animalistic fantasies.",
    price: 50 + (5 * rand(10)),
    duration: 24,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{animal.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

5.times do
  country = Faker::Address.country
  dream = Dream.new(
    name: "A weekend in #{country}.",
    description: "An all inclusive stay at a 5-star resort for you and a loved one.",
    price: 500 + (50 * rand(10)),
    duration: 48,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{country.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

5.times do
  band = Faker::Music::RockBand.name
  dream = Dream.new(
    name: "See #{band} live",
    description: "Experience the best to ever do it, live and unrestrained. Don't forget your earplugs.",
    price: 20 + (50 * rand(10)),
    duration: 3,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{band.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

2.times do
  superpower = Faker::Superhero.power.downcase
  dream = Dream.new(
    name: "Gain #{superpower}",
    description: "Become the superhero you always fantasised about being. Experiences may vary.",
    price: 100 + (50 * rand(10)),
    duration: 8,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{superpower.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

5.times do
  planet = Faker::Space.planet
  dream = Dream.new(
    name: "Visit #{planet}",
    description: "In space no one can hear you cry. Spacesuit not included.",
    price: 200 + (5 * rand(10)),
    duration: 8,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{planet.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

1.times do
  philosopher = Faker::GreekPhilosophers.name
  dream = Dream.new(
    name: "An evening with #{philosopher}",
    description: "As a wise man once said...#{Faker::GreekPhilosophers.quote}",
    price: 100 + (25 * rand(10)),
    duration: 8,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{philosopher.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end

5.times do
  team = Faker::Sports::Football.team
  dream = Dream.new(
    name: "Witness #{team} win the league",
    description: "Face it...it's not happening anytime soon",
    price: 60 + (5 * rand(10)),
    duration: 8,
    user_id: 1 + rand(40),
    rating: 2 + rand(4)
  )
  file = URI.open("https://loremflickr.com/600/400/#{team.gsub(/ /, "%20")}")
  dream.photo.attach(io: file, filename: 'preview.png', content_type: 'image/jpeg')
  dream.save!
end
