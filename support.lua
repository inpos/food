-- RUBENFOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- ======================================
-- >> rubenfood/support.lua
-- adds support for other mods
-- ======================================
-- [support]
-- ======================================

print "RubenFood [Support] - Initialising"
function node_implement(modname,n_ext,n_int,resultfunc)
         if not minetest.get_modpath(modname) then
            resultfunc()
         else
            minetest.register_alias(n_int,n_ext)
         end
end







print "RubenFood [Support] - Farming Mod"
node_implement("farming","farming:flour","food:flour",function()
   minetest.register_craftitem("food:flour", {
	description = "Flour",
	inventory_image = "farming_flour.png",
})
end)

node_implement("farming","farming:strawberry_item","food:strawberry",function()
minetest.register_craftitem("food:strawberry", {
	description = "Strawberry",
	inventory_image = "farming_strawberry.png",
	on_use = minetest.item_eat(2),
})
end)

node_implement("farming","farming:bread","food:bread",function()



minetest.register_craftitem("food:bread", {
	description = "Bread",
	inventory_image = "farming_bread.png",
	stack_max = 1,
	on_use = minetest.item_eat(10)
})
minetest.register_craft({
	output = "food:dough",
	type = "shapeless",
	recipe = {"food:flour", "food:flour", "food:flour", "food:flour", "bucket:bucket_water"},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})
minetest.register_craft({
	type = "cooking",
	output = "food:bread",
	recipe = "food:dough",
	cooktime = 10
})




end)


node_implement("farming","farming:cake_mix","food:dough",function()
minetest.register_craftitem("food:dough", {
	description = "Cake Mix",
	inventory_image = "farming_cake_mix.png",
})
end)





print "RubenFood [Support] - Animal Mod"
node_implement("animalmaterials","animalmaterials:glass","food:cup",function()
   minetest.register_craftitem("food:cup",{
	description = "Glass",
	tiles = {"food_cup.png"},
	inventory_image = "food_cup.png",
})
end)

node_implement("animalmaterials","animalmaterials:egg","food:egg",function()
 minetest.register_craftitem("food:egg", {
	description = "Egg",
	image = "animalmaterials_egg.png",
	stack_max=10
})
end)

node_implement("animalmaterials","animalmaterials:milk","food:milk",function()
  minetest.register_craftitem("food:milk", {
	description = "Milk",
	image = "animalmaterials_milk.png",
	on_use = minetest.item_eat(1),
	groups = { eatable=1 },
	stack_max=10
})
end)









