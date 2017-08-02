# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clean db
Upvote.destroy_all
Product.destroy_all
User.destroy_all

#create users
djspatule = User.create(email: "djspatule@wanadoo.fr", password:"testtest")
example = User.create(email: "test@test.com", password:"testtest")

#create products
trello = Product.create!(user: djspatule, name: "Trello", category: "work", url:"www.trello.com")
odoo = Product.create!(user: djspatule, name: "Odoo", category: "work", url:"www.odoo.com")
slack = Product.create!(user: example, name: "Slack", category: "communication", url:"www.slack.com")
garage_band = Product.create!(user: example, name: "Garage Band", category: "music", url:"www.garageband.com")

#create upvotes
trello.upvotes.create!(user: djspatule)
trello.upvotes.create!(user: example)
slack.upvotes.create!(user: example)
garage_band.upvotes.create!(user: example)

