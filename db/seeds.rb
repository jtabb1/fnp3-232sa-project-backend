## Delete Resources in the Correct Order
#

Product.destroy_all
Category.destroy_all


## Create Resource
#
3.times do |i|
  Seller.create(
    name: "Seller_Name_#{i+1}", 
  )
end

puts 'Sellers Seeded'


## Create Resource
#
Category.create( name: "Cleaners" )
Category.create( name: "Clothes" )
Category.create( name: "Foods" )
Category.create( name: "Tools" )

puts 'Categories Seeded'


## Create Resource
#
sellers = Seller.all

p_price = [
  694, 997, 1995, 248799
]

p_qty = [
  0, 2, 20, 2000
]

Product.create( name: "p", price: 694, msrp: 800, )
10.times do |i|
    Product.create(
      name: "p#{i+1}", 
      price: p_price.sample, 
      qty: p_qty.sample,
      category: categories.sample,
      seller: sellers.sample
    )
end

puts 'Products Seeded'


##
#

puts 'Seeding complete'