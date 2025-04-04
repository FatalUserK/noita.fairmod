-- default biome functions that get called if we can't find a a specific biome that works for us
-- The level of action ids that are spawned from the chests
--stylua: ignore start
CHEST_LEVEL = 2
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")
dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/biome_modifiers.lua")
dofile( "data/scripts/items/generate_shop_item.lua" )

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff00AC33, "load_pixel_scene3" )
RegisterSpawnFunction( 0xff4691c7, "load_puzzle_capsule" )
RegisterSpawnFunction( 0xff3691d7, "load_puzzle_capsule_b" )
RegisterSpawnFunction( 0xff55AF4B, "load_altar" )
RegisterSpawnFunction( 0xff23B9C3, "spawn_altar_torch" ) 
RegisterSpawnFunction( 0xff55AF8C, "spawn_skulls" ) 
RegisterSpawnFunction( 0xffF516E3, "spawn_scavenger_party" )
RegisterSpawnFunction( 0xff3208e5, "spawn_aquatic" )
RegisterSpawnFunction( 0xff00e396, "spawn_mist_colossal" )
RegisterSpawnFunction( 0xffc131c3, "spawn_pylon" )
RegisterSpawnFunction( 0xffFFC84E, "spawn_acid" )
RegisterSpawnFunction( 0xff7285c4, "load_acidtank_right" )
RegisterSpawnFunction( 0xff9472c4, "load_acidtank_left" )
RegisterSpawnFunction( 0xff504600, "spawn_stones" )
RegisterSpawnFunction( 0xffc800ff, "load_pixel_scene_alt" )
RegisterSpawnFunction( 0xff33934c, "spawn_shopitem" )
RegisterSpawnFunction( 0xff80FF5A, "spawn_vines" )
RegisterSpawnFunction( 0xff434040, "spawn_burning_barrel" )
RegisterSpawnFunction( 0xffb4a00a, "spawn_fish" )
RegisterSpawnFunction( 0xffaa42ff, "spawn_electricity_trap" )
RegisterSpawnFunction( 0xff366178, "spawn_buried_eye_teleporter" )
RegisterSpawnFunction( 0xff876543, "spawn_statue_hand" )
RegisterSpawnFunction( 0xff00855c, "spawn_receptacle" )


------------ SMALL ENEMIES ----------------------------------------------------

g_small_enemies =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.1,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	--
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 4,    
		entity 	= "data/entities/animals/rat.xml"
	},
	{
		prob   		= 0.10,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/entities/animals/miner_chef.xml",
	},
	{
		prob   		= 0.08,
		min_count	= 2,
		max_count	= 3,  
		entity 	= "mods/noita.fairmod/files/content/milk_biome/entities/animals/miner_milk.xml"
	},
}


------------ BIG ENEMIES ------------------------------------------------------

g_big_enemies =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.3,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step

}


---------- UNIQUE ENCOUNTERS ---------------

g_scavenger_party =
{
	total_prob = 0,
	-- 
	{
		prob   		= 1.0,
		min_count	= 2,
		max_count	= 8,    
		entity 	= "mods/noita.fairmod/files/content/milk_biome/entities/animals/miner_milk.xml"
	},
}

g_aquatic =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- 

}

g_mist_colossal =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
}

g_pylon =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
}


g_unique_enemy =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.0,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step

}

g_unique_enemy2 =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.0,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step

}

------------ ITEMS ------------------------------------------------------------

g_items =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step
	{
		prob   		= 5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "mods/noita.fairmod/files/content/milk_biome/entities/items/pickup/endless_milk_potion.xml"
	},
	-- debug tests
	{
		prob   		= 5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/wand_level_04_better.xml"
	},
	{
		prob   		= 5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/wand_unshuffle_05.xml"
	},
	{
		prob   		= 2,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/pickup/waterstone.xml"
	},
	{
		prob   		= 2,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "mods/noita.fairmod/files/content/milk_biome/entities/items/pickup/endless_milk_potion.xml"
	},
}

g_pixel_scene_01 =
{
	total_prob = 0,
}

g_pixel_scene_01_alt =
{
	total_prob = 0,
}

g_pixel_scene_02 =
{
	total_prob = 0,
	{
		prob   			= 0.5,
		material_file 	= "data/biome_impl/snowcave/horizontalobservatory.png",
		visual_file		= "data/biome_impl/snowcave/horizontalobservatory_visual.png",
		background_file	= "data/biome_impl/snowcave/horizontalobservatory_background.png",
		is_unique		= 0
	},
	{
		prob   			= 0.5,
		material_file 	= "data/biome_impl/snowcave/horizontalobservatory2.png",
		visual_file		= "data/biome_impl/snowcave/horizontalobservatory2_visual.png",
		background_file	= "data/biome_impl/snowcave/horizontalobservatory2_background.png",
		is_unique		= 0
	},
	{
		prob   			= 0.3,
		material_file 	= "data/biome_impl/snowcave/horizontalobservatory3.png",
		visual_file		= "data/biome_impl/snowcave/horizontalobservatory3_visual.png",
		background_file	= "data/biome_impl/snowcave/horizontalobservatory3_background.png",
		is_unique		= 0
	},
}

g_pixel_scene_03 =
{
	total_prob = 0,
	{
		prob   			= 0.9,
		material_file 	= "",
		visual_file		= "",
		background_file	= "",
		is_unique		= 0
	},
	{
		prob   			= 0.5,
		material_file 	= "data/biome_impl/snowcave/tinyobservatory.png",
		visual_file		= "data/biome_impl/snowcave/tinyobservatory_visual.png",
		background_file	= "data/biome_impl/snowcave/tinyobservatory_background.png",
		is_unique		= 0
	},
	{
		prob   			= 0.5,
		material_file 	= "data/biome_impl/snowcave/tinyobservatory2.png",
		visual_file		= "data/biome_impl/snowcave/tinyobservatory2_visual.png",
		background_file	= "data/biome_impl/snowcave/tinyobservatory2_background.png",
		is_unique		= 0
	},
}

g_acidtank_right =
{
	total_prob = 0,
	{
		prob   			= 1.7,
		material_file 	= "",
		visual_file		= "",
		background_file	= "",
		is_unique		= 0
	},
}

g_acidtank_left =
{
	total_prob = 0,
	{
		prob   			= 1.7,
		material_file 	= "",
		visual_file		= "",
		background_file	= "",
		is_unique		= 0
	},
}

g_puzzle_capsule =
{
	total_prob = 0,
	{
		prob   			= 9.0,
		material_file 	= "",
		visual_file		= "",
		background_file	= "",
		is_unique		= 0
	},
	{
		prob   			= 1.0,
		material_file 	= "data/biome_impl/snowcave/puzzle_capsule.png",
		visual_file		= "data/biome_impl/snowcave/puzzle_capsule_visual.png",
		background_file	= "data/biome_impl/snowcave/puzzle_capsule_background.png",
		is_unique		= 0
	},
}

g_puzzle_capsule_b =
{
	total_prob = 0,
	{
		prob   			= 9.0,
		material_file 	= "",
		visual_file		= "",
		background_file	= "",
		is_unique		= 0
	},
	{
		prob   			= 1.0,
		material_file 	= "data/biome_impl/snowcave/puzzle_capsule_b.png",
		visual_file		= "data/biome_impl/snowcave/puzzle_capsule_b_visual.png",
		background_file	= "data/biome_impl/snowcave/puzzle_capsule_b_background.png",
		is_unique		= 0
	},
}

g_lamp =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 0.4,
		min_count	= 1,
		max_count	= 1,    
		entity 	= ""
	},
}

g_props =
{
	total_prob = 0,
	{
		prob   		= 0.15,
		min_count	= 0,
		max_count	= 0,
		offset_y 	= 0,    
		entity 	= ""
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		offset_y 	= 0,
		entity 	= "data/entities/props/physics_box_explosive.xml"
	},
	{
		prob   		= 0.2,
		min_count	= 1,
		max_count	= 1,
		offset_y 	= 0,    
		entity 	= "data/entities/props/physics_propane_tank.xml"
	},
	{
		prob   		= 0.3,
		min_count	= 1,
		max_count	= 1,    
		offset_y 	= 0,
		entity 	= "data/entities/props/physics_barrel_oil.xml"
	},
	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,    
		offset_y 	= 0,
		entity 	= "data/entities/props/physics_trap_electricity_enabled.xml"
	},
}

g_ghostlamp =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 1.0,
		min_count	= 1,
		max_count	= 1,    
		offset_y	= 10,
		entity 	= "data/entities/props/physics_chain_torch_ghostly.xml"
	},
}

g_candles =
{
	total_prob = 0,
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_1.xml"
	},
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_2.xml"
	},
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_3.xml"
	},
}

g_fish =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 1.0,
		min_count	= 3,
		max_count	= 4,    
		entity 	= "data/entities/animals/fish_large.xml"
	},
	{
		prob   		= 5.0,
		min_count	= 1,
		max_count	= 1,    
		entity 	= ""
	},
}

-- actual functions that get called from the wang generator

function init(x, y, w, h)
end

function spawn_small_enemies(x, y)
	spawn(g_small_enemies,x,y)
end

function spawn_big_enemies(x, y)
	spawn(g_big_enemies,x,y)
end

function spawn_unique_enemy(x, y)
	spawn(g_unique_enemy,x,y)
end

function spawn_unique_enemy2(x, y)
	spawn(g_unique_enemy2,x,y)
end

function spawn_scavenger_party(x,y)
	spawn(g_scavenger_party, x, y)
end

function spawn_aquatic(x,y)
	spawn(g_aquatic, x, y)
end

function spawn_mist_colossal(x,y)
	spawn(g_mist_colossal, x, y)
end

function spawn_pylon(x,y)
	spawn(g_pylon, x, y)
end

function spawn_items(x, y)
	local r = ProceduralRandom( x-11.631, y+10.2257 )
	
	if (r < 0.45) then
		LoadPixelScene( "data/biome_impl/wand_altar.png", "data/biome_impl/wand_altar_visual.png", x-15, y-17, "", true )
	end
end

function spawn_lamp(x, y)
	spawn(g_lamp,x+5,y+10,0,0)
end

function spawn_props(x, y)
	spawn(g_props,x,y-3,0,0)
end

function spawn_skulls(x, y)
end

function spawn_stones(x, y)
end

function load_pixel_scene( x, y )
	--load_random_pixel_scene( g_pixel_scene_01, x, y )
end

function load_pixel_scene_alt( x, y )
	--load_random_pixel_scene( g_pixel_scene_01_alt, x, y )
end

function load_pixel_scene2( x, y )
	load_random_pixel_scene( g_pixel_scene_02, x, y )
end

function load_pixel_scene3( x, y )
	load_random_pixel_scene( g_pixel_scene_03, x, y )
end

function load_puzzle_capsule( x, y )
	--print("puzzle capsule spawned at " .. x .. ", " .. y)
	load_random_pixel_scene( g_puzzle_capsule, x, y )
end

function load_puzzle_capsule_b( x, y )
	--print("puzzle capsule spawned at " .. x .. ", " .. y)
	load_random_pixel_scene( g_puzzle_capsule_b, x-50, y-230 )
end

function spawn_altar_torch(x, y)
	EntityLoad( "data/entities/props/altar_torch.xml", x-7, y-36 )
end

function spawn_acid(x, y)
	EntityLoad( "data/entities/props/dripping_acid_gas.xml", x, y )
end

function load_altar( x, y )
	LoadPixelScene( "data/biome_impl/altar.png", "data/biome_impl/altar_visual.png", x-92, y-96, "", true )
	EntityLoad( "data/entities/buildings/altar.xml", x, y-32 )
end

function load_acidtank_right( x, y )
	load_random_pixel_scene( g_acidtank_right, x-12, y-12 )
end

function load_acidtank_left( x, y )
	load_random_pixel_scene( g_acidtank_left, x-252, y-12 )
end

function spawn_shopitem( x, y )
	generate_shop_item( x, y, false, 3 )
end

function spawn_vines(x, y)
end

function spawn_electricity_trap(x, y)
	EntityLoad("data/entities/props/physics_trap_electricity_enabled.xml", x, y)
end

function spawn_burning_barrel(x, y)
	EntityLoad( "data/entities/props/physics_barrel_burning.xml", x, y )
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end

function spawn_buried_eye_teleporter(x, y)
	EntityLoad("data/entities/buildings/teleport_snowcave_buried_eye.xml", x, y)
end

function spawn_statue_hand(x, y)
	EntityLoad("data/entities/buildings/statue_hand_1.xml", x, y)
end

function spawn_receptacle( x, y )
	EntityLoad( "data/entities/buildings/receptacle_water.xml", x, y )
end

function spawn_potions( x, y )
	EntityLoad("mods/noita.fairmod/files/content/milk_biome/entities/items/pickup/endless_milk_potion.xml",x,y)
end
--stylua: ignore end
