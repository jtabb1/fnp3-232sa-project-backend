## Delete Resources in the Correct Order
#

Product.destroy_all
Category.destroy_all


## Create Resource
#


4.times do |i|
  Category.create(
    name: "C#{i+1}", 
  )
end

puts 'Categories Seeded'


## Create Resource
#

categories = Category.all

p_price = [
  694, 997, 1995, 248799
]

p_qty = [
  0, 2, 20, 2000
]

10.times do |i|
    Product.create(
      name: "p#{i+1}", 
      price: p_price.sample, 
      qty: p_qty.sample,
      category: categories.sample
    )
end

puts 'Products Seeded'


##
#

puts 'Seeding complete'