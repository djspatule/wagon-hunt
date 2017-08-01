# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

djspatule = User.create(email: "djspatule@wanadoo.fr", password:"testtest")
example = User.create(email: "test@test.com", password:"testtest")
Product.create!(user_id: djspatule.id, name: "Trello", category: "work", url:"www.trello.com")
Product.create!(user_id: djspatule.id, name: "Odoo", category: "work", url:"www.odoo.com")
Product.create!(user_id: example.id, name: "Slack", category: "communication", url:"www.slack.com")
Product.create!(user_id: example.id, name: "Garage Band", category: "music", url:"www.garageband.com")
