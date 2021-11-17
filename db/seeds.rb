puts 'destroying all restaurants...'

Restaurant.delete_all

puts 'adding new restaurants...'

100.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    rating: rand(1..5),
    chef_name: Faker::Name.name
  )
end

puts 'seeding done!'
