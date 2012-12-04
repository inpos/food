-- RUBENFOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- =====================================
-- >> rubenfood/drinks/milkshakes.lua
-- adds drinks
-- =====================================
--
-- =====================================

print ("RubenFood [Master] - Loading Milk Shakes")

minetest.register_craftitem("food:ms_chocolate", {
	description = "Chocolate Milkshake",
	inventory_image = "food_ms_chocolate.png",
	on_use = minetest.item_eat(4)
})

minetest.register_craft({
	output = "food:ms_chocolate",
	recipe = {
		{"food:chocolate_milk"},
		{"food:cup"},	
	},
})

minetest.register_craftitem("food:ms_strawberry", {
	description = "Strawberry Milkshake",
	inventory_image = "food_ms_strawberry.png",
	on_use = minetest.item_eat(4)
})

minetest.register_craft({
	output = "food:ms_strawberry",
	recipe = {
		{"food:strawberry"},
		{"food:cup"},	
	},
})

minetest.register_craftitem("food:ms_banana", {
	description = "Banana Milkshake",
	inventory_image = "food_ms_banana.png",
	on_use = minetest.item_eat(4)
})

minetest.register_craft({
	output = "food:ms_banana",
	recipe = {
		{"food:banana"},
		{"food:cup"},	
	},
})
