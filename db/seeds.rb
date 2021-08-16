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
cleaners = Category.create( name: "Cleaners" )
clothes = Category.create( name: "Clothes" )
foods = Category.create( name: "Foods" )
tools = Category.create( name: "Tools" )

puts 'Categories Seeded'


## Create Resource
#
sellers = Seller.all
categories = Category.all

# p_price = [
#   694, 997, 1995, 248799
# ]

# p_qty = [
#   0, 2, 20, 2000
# ]

Product.create( photo_filename: "clnrs_bleach_liq_mix.jpg", name: "All Purpose Cleaner with Bleach", brand: "Great Value", amount: "32 oz", selling_multiple: 1, selling_points: 'kills viruses; removes stains; has bleach', price: 199, msrp: 599, cost: 59, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clnrs_fast_505.jpg", name: "Fast 505", brand: "Zep Commercial", amount: "32 oz", selling_multiple: 1, selling_points: 'industrial strength; removes heavy grease; cleans away grime', price: 399, msrp: 799, cost: 199, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clnrs_glass_liq_refill.jpg", name: "Glass Cleaner Refill", brand: "Great Value", amount: "67.6 oz", selling_multiple: 1, selling_points: 'streak-free shine; original fresh scent; buy in bulk to save', price: 299, msrp: 699, cost: 99, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clnrs_hardwood.jpg", name: "Hardwood & Laminate Floor Cleaner", brand: "Zep", amount: "32 oz", selling_multiple: 1, selling_points: 'dries fast; no rinsing needed; cleans & restores shine', price: 299, msrp: 699, cost: 149, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clnrs_lemon_scent_liq.jpg", name: "Lemon Scent All Purpose Cleaner with Bleach", brand: "Great Value", amount: "32 oz", selling_multiple: 1, selling_points: 'kills 99.9% of germs**; smells like lemons; cleans powerfully', price: 199, msrp: 599, cost: 59, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clnrs_liq_comet.jpg", name: "Comet Bathroom Cleaner", brand: "Comet", amount: "32 oz", selling_multiple: 1, selling_points: 'dissolves soap scum; removes hard water film', price: 269, msrp: 649, cost: 129, qty_in_inventory: 100, category: cleaners, seller: sellers.sample )
Product.create( photo_filename: "clothes_mens_sweater.jpg", name: "Men's Sweater, Black", brand: "British Khaki", amount: "XL", selling_multiple: 1, selling_points: 'v-neck; light weight', price: 2499, msrp: 4099, cost: 699, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "clothes_mens-jeans.jpg", name: "Men's Polo Shirt, Beige", brand: "Faded Glory", amount: "XL", selling_multiple: 1, selling_points: '100% organic cotton; color-fast', price: 1299, msrp: 2299, cost: 449, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "clothes_mens-long_sleeve_tShirt.jpg", name: "Men's Sweatpants, Grey", brand: "Fruit of the Loom", amount: "XL", selling_multiple: 1, selling_points: 'elastic waist; durable', price: 1199, msrp: 1999, cost: 399, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "clothes_mens-polo_shirt.jpg", name: "Men's Turtleneck, Brown", brand: "George", amount: "XL", selling_multiple: 1, selling_points: 'light weight; durable', price: 2499, msrp: 4099, cost: 699, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "clothes_mens-sweatpants.jpg", name: "Men's Jeans, Light Blue", brand: "Denizen", amount: "34W x 34L", selling_multiple: 1, selling_points: '100% cotton denim; lasts long', price: 1699, msrp: 2899, cost: 599, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "clothes_turtleneck.jpg", name: "Men's Long Sleeve T-Shirt, Black", brand: "Highland", amount: "XL", selling_multiple: 1, selling_points: '100% cotton; light weight', price: 1499, msrp: 2499, cost: 569, qty_in_inventory: 100, category: clothes, seller: sellers.sample )
Product.create( photo_filename: "foods_boost_drink.jpg", name: "Boost High Protein, Very Vanilla", brand: "Nestle", amount: "8 oz", selling_multiple: 1, selling_points: '20 g protein; 27 vitamins & mineralsp; 3 g fiber', price: 249, msrp: 349, cost: 79, qty_in_inventory: 100, category: foods, seller: sellers.sample )
Product.create( photo_filename: "foods_cranberry_sauce.jpg", name: "Jellied Cranberry Sauce", brand: "Pickwell Farms", amount: "14 oz", selling_multiple: 1, selling_points: 'seasonal; delicious', price: 15, msrp: 99, cost: 39, qty_in_inventory: 20, category: foods, seller: sellers.sample )
Product.create( photo_filename: "foods_garlic_vinaigrette.jpg", name: "Garlic Vinaigrette", brand: "Specialty Selected", amount: "12 oz", selling_multiple: 1, selling_points: 'white garlic cloves; infused w/ herbs and spices', price: 289, msrp: 499, cost: 69, qty_in_inventory: 100, category: foods, seller: sellers.sample )
Product.create( photo_filename: "foods_ginger_tea.jpg", name: "Ginger + Probiotics", brand: "Celestial Seasonings", amount: "1.1 oz", selling_multiple: 1, selling_points: 'since 1969; caffeine free; non gmo', price: 299, msrp: 519, cost: 119, qty_in_inventory: 100, category: foods, seller: sellers.sample )
Product.create( photo_filename: "foods_mac_and_cheese_mix.jpg", name: "Macaroni and Cheese Dinner", brand: "Cheese Club", amount: "7.25 oz", selling_multiple: 1, selling_points: 'no certified synthetic colors; ready in minutes', price: 69, msrp: 169, cost: 23, qty_in_inventory: 100, category: foods, seller: sellers.sample )
Product.create( photo_filename: "foods_pepsi_sz-20oz-bottle.jpg", name: "Pepsi", brand: "Pepsi", amount: "20 oz", selling_multiple: 1, selling_points: 'the choice of a new generation', price: 129, msrp: 199, cost: 39, qty_in_inventory: 100, category: foods, seller: sellers.sample )
Product.create( photo_filename: "tools_long_screwdriver.jpg", name: "Screwdriver, Phillips Head #2, 8\" Shaft", brand: "Husky", amount: nil, selling_multiple: 1, selling_points: nil, price: 999, msrp: 1699, cost: 399, qty_in_inventory: 202, category: tools, seller: sellers.sample )
Product.create( photo_filename: "tools_multi-bit_screwdriver.jpg", name: "Screwdriver, Multi-Bit", brand: "Stanley", amount: nil, selling_multiple: 1, selling_points: nil, price: 1499, msrp: 2299, cost: 449, qty_in_inventory: 202, category: tools, seller: sellers.sample ) 
Product.create( photo_filename: "tools_needlenose_pliers.jpg", name: "Needle Nose Pliers", brand: "HDX", amount: nil, selling_multiple: 1, selling_points: nil, price: 399, msrp: 799, cost: 99, qty_in_inventory: 202, category: tools, seller: sellers.sample ) 
Product.create( photo_filename: "tools_precision_screwdriver_set.jpg", name: "22-Piece Precision Screwdriver Set", brand: "Husky", amount: nil, selling_multiple: 1, selling_points: 'Guaranteed forever by Husky', price: 1499, msrp: 2299, cost: 599, qty_in_inventory: 202, category: tools, seller: sellers.sample )
Product.create( photo_filename: "tools_screwdriver.jpg", name: "Screwdriver, Phillips Head #2, 4\" Shaft", brand: "HDX", amount: nil, selling_multiple: 1, selling_points: nil, price: 399, msrp: 799, cost: 89, qty_in_inventory: 202, category: tools, seller: sellers.sample )
Product.create( photo_filename: "tools_tape_measure.jpg", name: "LeverLock Tape Measure", brand: "Stanley", amount: nil, selling_multiple: 1, selling_points: 'fractional scale; magnetic; 25 foot maximum length', price: 699, msrp: 1099, cost: 349, qty_in_inventory: 100, category: tools, seller: sellers.sample )
# 10.times do |i|
#     Product.create(
#       name: "p#{i+1}", 
#       price: p_price.sample, 
#       # msrp: p_price.sample + 501,
#       qty: p_qty.sample,
#       category: categories.sample,
#       seller: sellers.sample
#     )
# end

puts 'Products Seeded'


##
#

puts 'Seeding complete'