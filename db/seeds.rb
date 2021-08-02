# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



usr = User.all
usr.destroy_all
ct = City.all
ct.destroy_all
gp = Gossip.all
gp.destroy_all

5.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
  city_random = rand(City.first.id..City.last.id)
 
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(80), city_id: city_random)
  #puts "c'est OK"
end

10.times do
  user_rdm = rand(User.first.id..User.last.id)
 
  gossip = Gossip.create!(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id: user_rdm, created_at: Faker::Date.between(from: '2021-09-23', to: '2021-09-25'))
  #puts "c'est OK"
end


