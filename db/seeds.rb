GroceryList.destroy_all
Category.destroy_all
Item.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

10.times do
    Category.create(title: Faker::Tea.variety)
end

10.times do
    Item.create(title: Faker::Food.dish, quantity:rand(1..5))
end

10.times do
    GroceryList.create(title: Faker::Tea.variety, category: Category.all.sample, item: Item.all.sample)
end

puts "✅ Done seeding!"
