# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reviewer.create(username: "Ryan", email: "ReachRyanMui@gmail.com", age: 28)
Reviewer.create(username: "Adela", email: "drakestar@gmail.com", age: 25)

Menu.create(restaurant: "Taco Bell")

Item.create(menu_id: 1, name: "Gordita Taco")
Item.create(menu_id: 1, name: "Baja Blast")
Item.create(menu_id: 1, name: "Cheesy Cheese Burrito")

Ranking.create(reviewer_id: 1, menu_id: 1, gold_star: 1, silver_star: 2, bronze_star: 3)
Ranking.create(reviewer_id: 2, menu_id: 1, gold_star: 2, silver_star: 3, bronze_star: 1)