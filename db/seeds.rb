# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all ingredients"
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating all ingredients.."

ingredients = ["lemon","ice","mint leaves","strawberry","gin","vodka","rum","orange","kiwi"]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end

puts "Finished!"
