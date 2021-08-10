## Delete Resources in the Correct Order
#

Product.destroy_all
Category.destroy_all


## Create Resource
#

c_trends = [
  'ct1', 'ct2'
]

c_names = [
  "A", "B", "C", "D", "E", "F", "G", "H", "I", 
  "J", "K", "L", "M", "N", "O", "P", "Q", "R", 
  "S", "T", "U", "V", "W", "X", "Y", "Z"
]

4.times do |i|
  Category.create(
    name: "#{c_names[i]}", 
    demand_trend: c_trends.sample,
    is_demand_trend: false
  )
end

# Category.create(name: "A", demand_trend: c_trends.sample, is_demand_trend: false)
# Category.create(name: "B", demand_trend: c_trends.sample, is_demand_trend: false)
# Category.create(name: "C", demand_trend: c_trends.sample, is_demand_trend: false)
# Category.create(name: "D", demand_trend: c_trends.sample, is_demand_trend: false)

puts 'Categories Seeded'


## Create Resource
#

categories = Category.all

p_trends = [
  'pt1', 'pt2'
]

p_costs = [
  200, 700, 1400
]

p_profits = [
  0.2, 0.4, 0.8
]

p_qty = [
  0, 2, 1000
]

10.times do |i|
    Product.create(
      name: "p#{i+1}", 
      price: (p_costs.sample * (1 + p_profits.sample)).floor(), 
      cost: p_costs.sample,
      qty: p_qty.sample,
      demand_trend: p_trends.sample,
      is_demand_trend: false,
      category: categories.sample
    )
end

puts 'Products Seeded'


##
#

puts 'Seeding complete'