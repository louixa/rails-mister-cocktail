# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

lemon_mojito = Cocktail.create!(name: 'Lemon Mojito')
beach = Cocktail.create!(name: 'Sex On The Beach')
love = Cocktail.create!(name: 'Hibiscus Love')

lemon = Ingredient.create!(name: 'lemon')
ice = Ingredient.create!(name: 'ice')
mint_leaves = Ingredient.create!(name: 'mint leaves')

Dose.create!(
  description: '1 slice',
  ingredient: lemon,
  cocktail: lemon_mojito )

Dose.create!(
  description: '1 cup',
  ingredient: ice,
  cocktail: beach )

Dose.create!(
  description: '2 leaves',
  ingredient: mint_leaves,
  cocktail: love )
