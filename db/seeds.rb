# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

10.times do
    city = City.create!(city_name: Faker::Nation.capital_city)
  end

  10.times do
    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name,
                        city_id: rand(1..10))
end

10.times do
    dog = Dog.create!(race: Faker::Creature::Dog.breed,
                        city_id: rand(1..10))
end

10.times do
    stroll = Stroll.create(dogsitter_id: rand(1..10),
                            dog_id: rand(1..10),
                            city_id: rand(1..10))
end



