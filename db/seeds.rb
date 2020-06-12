# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create!(name: vendor)
end

sweets.each do |sweet|
  Sweet.create!(name: sweet)
end

vend_sweet1 = VendorSweet.new(vendor_name: "Insomnia Cookies", sweet_name: "Chocolate Chunk Cookie", price: 100)
vend_sweet2 = VendorSweet.new(vendor_name: "Cookies Cream", sweet_name: "White Chocolate Cookie", price: 30)
vend_sweet3 = VendorSweet.new(vendor_name: "Gregory's Coffee", sweet_name: "M&Ms Cookie", price: 10)
vend_sweet4 = VendorSweet.new(vendor_name: "Carvel", sweet_name: "Peanut Butter Icecream Cake", price: 99)

