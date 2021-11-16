# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  {first_name: 'John',
  last_name: 'Doe',
  email: 'john@gmail.com',
  password: '123456'
})

flying = Dream.create!(
  { name: 'Flying',
    description: 'Fly over a twinkling city at night.',
    price: 8.00,
    duration: 2,
    user_id: 1
  }
)

ryan = Dream.create!(
  { name: 'Ryan Reynolds',
    description: 'Have dinner with Ryan Reynolds and talk about Free Guy, life, love and everything in between.',
    price: 16.00,
    duration: 4,
    user_id: 1
  }
)
