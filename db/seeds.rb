# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
# require 'json'

# ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

# ingredients['drinks'].each { |i| Ingredient.create(name: i['strIngredient1']) }

# Cocktail.create(name: 'Martini', picture_url: 'https://source.unsplash.com/random/800x600/?cocktail,Martini')
# Cocktail.create(name: 'Gelato Gin', picture_url: 'https://source.unsplash.com/random/800x600/?cocktail,gin')

# FOR COCKTAIL PHOTO
# Cocktail.all.each do |c|
#   c.photo.purge
#   file = URI.open('https://source.unsplash.com/random/800x600/?cocktail,whiskey')
#   c.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')
# end
