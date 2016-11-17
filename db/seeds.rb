# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name:
#   Character.create(name: 'Luke',
require 'open-uri'
require 'json'

Cocktail.destroy_all
Ingredient.destroy_all

result = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)


#   Character.create(name: 'Luke',
result["drinks"].each do |ingredient_hash|
  Ingredient.create(name: ingredient_hash["strIngredient1"])
end
Ingredient.create(name: "Pickle juice")


# Cocktail.create(name: "Tails of Cocks", image_url: "fancy-drink.jpg")
Cocktail.create(name: "Sau's Kapow", image_url: "flame-drink.jpg")
Cocktail.create(name: "Nick's Pick...les", image_url: "pour-dat-drink.jpg")
Cocktail.create(name: "The Pourous of Boris", image_url: "ooh-la-la-drink.jpg")
Cocktail.create(name: "Claudia's Cloud", image_url: "wine-drink.jpg")
Cocktail.create(name: "Thibault's Geronimo", image_url: "drank-drink.jpg")
Cocktail.create(name: "Søren's Pourin'", image_url: "hard-drink.jpg")
Cocktail.create(name: "Leore's Four Boars", image_url: "here-drink.jpg")
