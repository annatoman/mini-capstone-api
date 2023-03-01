# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Delphinium", price: 4, image_url: "example.url", description: "A beautiful and tall blue flower")
product.save

product = Product.new(name: "Peony", price: 6, image_url: "example.url", description: "A large bloom that comes in a variety of colors")
product.save

product = Product.new(name: "Chamomile", price: 3, image_url: "example.url", description: "Like a mini-daisy, super cute!")
product.save