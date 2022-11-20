# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Post.destroy_all

25.times do
  Post.create(title: Faker::Company.name, subtitle: Faker::Company.industry, content: Faker::Company.catch_phrase, date: Faker::Date.between(from: 300.days.ago, to: Date.today))
  puts 'post created'
end
puts 'finished seeding...'
