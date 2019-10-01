# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



 lostKeys = LostItem.create(name: "Keys")
 lostWallet = LostItem.create(name: "Wallet")
 lostPhone = LostItem.create(name: "Phone")
 lostDog = LostItem.create(name: "Dog")

 underBed = Location.create(name: "Under bed")
 onCounter = Location.create(name: "On the countertop")
 pocket = Location.create(name: "In pocket")
 laundryBasket = Location.create(name: "In the laundry basket")

 mackenzie = User.create(username: "mackied0g", password: "nincompoop")
 testCase = User.create(username: "teste", password: "1234")
 testCase1 = User.create(username: "teste", password: "12345")
 piotr = User.create(username: "p!otr", password: "socks!!!")

 foundIt = Founds.create(lost_item_id: lostPhone.id, location_id: pocket.id)
 foundIt = Founds.create(lost_item_id: lostWallet.id, location_id: laundryBasket.id)
 foundIt = Founds.create(lost_item_id: lostDog.id, location_id: underBed.id)
 foundIt = Founds.create(lost_item_id: lostKeys.id, location_id: laundryBasket.id)