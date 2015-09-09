# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all

Product.create([
  {
    name: "lucky lover",
    description: "too many lovers",
    price: 797,
    in_stock: true
  },
  {
    name: "sweaty betty",
    description: "yo yo",
    price: 72,
    in_stock: true
  },
  {
    name: "johnny guitar",
    description: "this guy",
    price: 333,
    in_stock: true
  }
])