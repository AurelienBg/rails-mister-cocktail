# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

c1 = Cocktail.new(name: "mojito")
c2 = Cocktail.new(name: "caipirinha")

i1 = Ingredient.new(name: "lemon")
i2 = Ingredient.new(name: "orange")

d1 = Dose.new(description: "lemon-mojito", cocktail: c1, ingredient: i1)
d2 = Dose.new(description: "lemon-caipi", cocktail: c2, ingredient: i1)
d3 = Dose.new(description: "lemon-caipi2", cocktail: c2, ingredient: i1)

c1.save!
c2.save!
i1.save!
i2.save!
d1.save!
d2.save!
# d3.save! testing validation and association
