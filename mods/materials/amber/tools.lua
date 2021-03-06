-- Tools --
-- Descriptions --

tooltypes = {
			"Pickaxe",
			"Shovel",
			"Axe",
			"Sword"
}
amber.create_description = function(n)
	local description = "Amber " .. tooltypes[n]
  return description
end

amber.create_ancient_description = function(n)
	local description = "Ancient Amber " .. tooltypes[n]
  return description
end

-- Pickaxe --
minetest.register_tool("amber:pickaxe", {
	description = amber.create_description(1),
	inventory_image = "amber_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.20, [2]=1.80, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Shovel --

minetest.register_tool("amber:shovel", {
	description = amber.create_description(2),
	inventory_image = "amber_shovel.png",
	wield_image = "amber_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.70, [2]=1.00, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Axe --

minetest.register_tool("amber:axe", {
	description = amber.create_description(3),
	inventory_image = "amber_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.70, [2]=1.50, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Sword --

minetest.register_tool("amber:sword", {
	description = amber.create_description(4),
	inventory_image = "amber_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.7, [2]=1.30, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})
-- Toolranks Support --
if minetest.get_modpath("toolranks") then
for n=1,4 do
  minetest.override_item("amber:" .. tooltypes[n]:lower(), {
  original_description = "Amber " .. tooltypes[n],
  description = toolranks.create_description("Amber " .. tooltypes[n], 0, 1),
  after_use = toolranks.new_afteruse,
})
end
end

-- Ancient Tools --
local anch_color = "006699"
minetest.register_tool("amber:pickaxe_ancient", {
	description = amber.create_ancient_description(1),
	inventory_image = "amber_pickaxe.png^(amber_outline_pickaxe.png^[colorize:#" .. anch_color .. ")",
	wield_image = "amber_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=0.8, [3]=0.40}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Shovel --

minetest.register_tool("amber:shovel_ancient", {
	description = amber.create_ancient_description(2),
	inventory_image = "amber_shovel.png^(amber_outline_shovel.png^[colorize:#" .. anch_color .. ")",
	wield_image = "amber_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.00, [2]=0.40, [3]=0.15}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Axe --

minetest.register_tool("amber:axe_ancient", {
	inventory_image = "amber_axe.png^(amber_outline_axe.png^[colorize:#" .. anch_color .. ")",
	wield_image = "amber_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.50}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Sword --

minetest.register_tool("amber:sword_ancient", {
	description = amber.create_ancient_description(4),
	inventory_image = "amber_sword.png^(amber_outline_sword.png^[colorize:#" .. anch_color .. ")",
	wield_image = "amber_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1,8, [2]=0.8, [3]=0.25}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Toolranks Support --
if minetest.get_modpath("toolranks") then
for n=1,4 do
  minetest.override_item("amber:" .. tooltypes[n]:lower() .. "_ancient", {
  original_description = "Ancient Amber " .. tooltypes[n],
  description = toolranks.create_description("Ancient Amber " .. tooltypes[n], 0, 1),
  after_use = toolranks.new_afteruse,
})
end
end
