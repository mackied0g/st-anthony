# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



 mackenzie = User.create(username: "mackied0g", password: "nincompoop")
 testCase1 = User.create(username: "teste", password: "12345")
 piotr = User.create(username: "p!otr", password: "socks!!!")

 lostKeys = Lost.create(name: "Keys", user: mackenzie)
 lostWallet = Lost.create(name: "Wallet", user: mackenzie)
 lostPhone = Lost.create(name: "Phone", user: mackenzie)
 lostDog = Lost.create(name: "Dog", user: mackenzie)

 underBed = Location.create(name: "Under bed")
 onCounter = Location.create(name: "On the countertop")
 pocket = Location.create(name: "In pocket")
 laundryBasket = Location.create(name: "In the laundry basket")

 foundIt = Found.create(lost: lostPhone, location: pocket)
 foundIt = Found.create(lost: lostWallet, location: laundryBasket)
 foundIt = Found.create(lost: lostDog, location: underBed)
 foundIt = Found.create(lost: lostKeys, location: laundryBasket)