local nxml = dofile_once("mods/noita.fairmod/files/lib/nxml.lua") ---@type nxml

local backgrounds = {
	{--milk
		image = "mods/noita.fairmod/files/content/milk_biome/cheesebackground.png" ,
		edge_left = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-left.png",
		edge_right = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-right.png",
		edge_top = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-top.png",
		edge_bottom = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-bottom.png",
	},
	{
		image = "mods/noita.fairmod/files/content/hamis_biome/biome/gfx/bg.png" ,
		edge_left = "mods/noita.fairmod/files/content/hamis_biome/biome/gfx/bg_left.png",
		edge_right = "mods/noita.fairmod/files/content/hamis_biome/biome/gfx/bg_right.png",
		edge_top = "mods/noita.fairmod/files/content/hamis_biome/biome/gfx/bg_top.png",
		edge_bottom = "mods/noita.fairmod/files/content/hamis_biome/biome/gfx/bg_bottom.png",
	},
	{--tota
		image = "data/weather_gfx/background_crypt.png" ,
		edge_left = "data/weather_gfx/edges/background_crypt_left.png",
		edge_right = "data/weather_gfx/edges/background_crypt_right.png",
		edge_top = "data/weather_gfx/edges/background_crypt_top.png",
		edge_bottom = "data/weather_gfx/edges/background_crypt_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_01.png",
		edge_left = "data/weather_gfx/edges/background_cave_01_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_01_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_01_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_01_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_02.png",
		edge_left = "data/weather_gfx/edges/background_cave_02_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_02_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_02_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_02_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_03.png",
		edge_left = "data/weather_gfx/edges/background_cave_03_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_03_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_03_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_03_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt2.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt2_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt2_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt2_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt2_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt3.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt3_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt3_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt3_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt3_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt4.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt4_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt4_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt4_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt4_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt6.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt6_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt6_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt6_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt6_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt7.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt7_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt7_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt7_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt7_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt9.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt9_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt9_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt9_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt9_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_04_alt10.png",
		edge_left = "data/weather_gfx/edges/background_cave_04_alt10_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_04_alt10_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_04_alt10_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_04_alt10_bottom.png",
	},
	{
		image = "data/weather_gfx/background_cave_07.png",
		edge_left = "data/weather_gfx/edges/background_cave_07_left.png",
		edge_right = "data/weather_gfx/edges/background_cave_07_right.png",
		edge_top = "data/weather_gfx/edges/background_cave_07_top.png",
		edge_bottom = "data/weather_gfx/edges/background_cave_07_bottom.png",
	},
	{
		image = "data/weather_gfx/background_coalmine.png",
		edge_left = "data/weather_gfx/edges/background_coalmine_left.png",
		edge_right = "data/weather_gfx/edges/background_coalmine_right.png",
		edge_top = "data/weather_gfx/edges/background_coalmine_top.png",
		edge_bottom = "data/weather_gfx/edges/background_coalmine_bottom.png",
	},
	{
		image = "data/weather_gfx/background_excavationsite.png",
		edge_left = "data/weather_gfx/edges/background_excavationsite_left.png",
		edge_right = "data/weather_gfx/edges/background_excavationsite_right.png",
		edge_top = "data/weather_gfx/edges/background_excavationsite_top.png",
		edge_bottom = "data/weather_gfx/edges/background_excavationsite_bottom.png",
	},
	{
		image = "data/weather_gfx/background_fungicave_01.png",
		edge_left = "data/weather_gfx/edges/background_fungicave_01_left.png",
		edge_right = "data/weather_gfx/edges/background_fungicave_01_right.png",
		edge_top = "data/weather_gfx/edges/background_fungicave_01_top.png",
		edge_bottom = "data/weather_gfx/edges/background_fungicave_01_bottom.png",
	},
	{
		image = "data/weather_gfx/background_fungiforest_01.png",
		edge_left = "data/weather_gfx/edges/background_fungiforest_01_left.png",
		edge_right = "data/weather_gfx/edges/background_fungiforest_01_right.png",
		edge_top = "data/weather_gfx/edges/background_fungiforest_01_top.png",
		edge_bottom = "data/weather_gfx/edges/background_fungiforest_01_bottom.png",
	},
	{
		image = "data/weather_gfx/background_pyramid.png",
		edge_left = "data/weather_gfx/edges/background_pyramid_left.png",
		edge_right = "data/weather_gfx/edges/background_pyramid_right.png",
		edge_top = "data/weather_gfx/edges/background_pyramid_top.png",
		edge_bottom = "data/weather_gfx/edges/background_pyramid_bottom.png",
	},
	{
		image = "data/weather_gfx/background_rainforest_dark.png",
		edge_left = "data/weather_gfx/edges/background_rainforest_dark_left.png",
		edge_right = "data/weather_gfx/edges/background_rainforest_dark_right.png",
		edge_top = "data/weather_gfx/edges/background_rainforest_dark_top.png",
		edge_bottom = "data/weather_gfx/edges/background_rainforest_dark_bottom.png",
	},
	{
		image = "data/weather_gfx/background_rainforest.png",
		edge_left = "data/weather_gfx/edges/background_rainforest_left.png",
		edge_right = "data/weather_gfx/edges/background_rainforest_right.png",
		edge_top = "data/weather_gfx/edges/background_rainforest_top.png",
		edge_bottom = "data/weather_gfx/edges/background_rainforest_bottom.png",
	},
	{
		image = "data/weather_gfx/background_robobase.png",
		edge_left = "data/weather_gfx/edges/background_robobase_left.png",
		edge_right = "data/weather_gfx/edges/background_robobase_right.png",
		edge_top = "data/weather_gfx/edges/background_robobase_top.png",
		edge_bottom = "data/weather_gfx/edges/background_robobase_bottom.png",
	},
	{
		image = "data/weather_gfx/background_snowcastle.png",
		edge_left = "data/weather_gfx/edges/background_snowcastle_left.png",
		edge_right = "data/weather_gfx/edges/background_snowcastle_right.png",
		edge_top = "data/weather_gfx/edges/background_snowcastle_top.png",
		edge_bottom = "data/weather_gfx/edges/background_snowcastle_bottom.png",
	},
	{
		image = "data/weather_gfx/background_snowcave.png",
		edge_left = "data/weather_gfx/edges/background_snowcave_left.png",
		edge_right = "data/weather_gfx/edges/background_snowcave_right.png",
		edge_top = "data/weather_gfx/edges/background_snowcave_top.png",
		edge_bottom = "data/weather_gfx/edges/background_snowcave_bottom.png",
	},
	{
		image = "data/weather_gfx/background_the_end.png",
		edge_left = "data/weather_gfx/edges/background_the_end_left.png",
		edge_right = "data/weather_gfx/edges/background_the_end_right.png",
		edge_top = "data/weather_gfx/edges/background_the_end_top.png",
		edge_bottom = "data/weather_gfx/edges/background_the_end_bottom.png",
	},
	{
		image = "data/weather_gfx/background_vault_frozen.png",
		edge_left = "data/weather_gfx/edges/background_vault_frozen_left.png",
		edge_right = "data/weather_gfx/edges/background_vault_frozen_right.png",
		edge_top = "data/weather_gfx/edges/background_vault_frozen_top.png",
		edge_bottom = "data/weather_gfx/edges/background_vault_frozen_bottom.png",
	},
	{
		image = "data/weather_gfx/background_vault.png",
		edge_left = "data/weather_gfx/edges/background_vault_left.png",
		edge_right = "data/weather_gfx/edges/background_vault_right.png",
		edge_top = "data/weather_gfx/edges/background_vault_top.png",
		edge_bottom = "data/weather_gfx/edges/background_vault_bottom.png",
	},
	{
		image = "data/weather_gfx/background_wandcave.png",
		edge_left = "data/weather_gfx/edges/background_wandcave_left.png",
		edge_right = "data/weather_gfx/edges/background_wandcave_right.png",
		edge_top = "data/weather_gfx/edges/background_wandcave_top.png",
		edge_bottom = "data/weather_gfx/edges/background_wandcave_bottom.png",
	},
	{
		image = "data/weather_gfx/background_wizardcave.png",
		edge_left = "data/weather_gfx/edges/background_wizardcave_left.png",
		edge_right = "data/weather_gfx/edges/background_wizardcave_right.png",
		edge_top = "data/weather_gfx/edges/background_wizardcave_top.png",
		edge_bottom = "data/weather_gfx/edges/background_wizardcave_bottom.png",
	},
	--{
	--	image = "",
	--	edge_left = "",
	--	edge_right = "",
	--	edge_top = "",
	--	edge_bottom = "",
	--},
}

local scripts = {
	--"data/scripts/biomes/orbrooms/orbroom_02.lua",
	--"data/scripts/biomes/orbrooms/orbroom_06.lua",
	--"data/scripts/biomes/orbrooms/orbroom_04.lua",
	--"data/scripts/biomes/orbrooms/orbroom_09.lua",
	--"data/scripts/biomes/orbrooms/orbroom_07.lua",
	--"data/scripts/biomes/orbrooms/orbroom_11.lua",
	--"data/scripts/biomes/orbrooms/orbroom_08.lua",
	--"data/scripts/biomes/orbrooms/orbroom_10.lua",
	--"data/scripts/biomes/orbrooms/orbroom_00.lua",
	--"data/scripts/biomes/orbrooms/orbroom_03.lua",
	--"data/scripts/biomes/orbrooms/orbroom_01.lua",
	--"data/scripts/biomes/orbrooms/orbroom_05.lua",

	"mods/noita.fairmod/files/content/milk_biome/scripts/milk_biome.lua",
	"mods/noita.fairmod/files/content/hamis_biome/biome/hamis_biome.lua",
	"mods/noita.fairmod/files/content/backrooms/backrooms.lua",
	"mods/noita.fairmod/files/content/cauldron/biome/cauldron.lua",

	"data/scripts/biomes/boss_arena.lua",
	"data/scripts/biomes/the_end.lua",
	"data/scripts/biomes/mountain/mountain_hall.lua",
	"data/scripts/biomes/mountain/mountain_hall_2.lua",
	"data/scripts/biomes/mountain/mountain_hall_3.lua",
	"data/scripts/biomes/mountain/mountain_hall_4.lua",
	"data/scripts/biomes/snowcastle_hourglass_chamber.lua",
	"data/scripts/biomes/mountain/mountain_right.lua",
	"data/scripts/biomes/temple_altar_right_snowcave_empty.lua",
	"data/scripts/biomes/mountain/mountain_left.lua",
	"data/scripts/biomes/mountain/mountain_left_stub.lua",
	"data/scripts/biomes/niilo_testroom.lua",
	"data/scripts/biomes/mountain/mountain_right_entrance.lua",
	"data/scripts/biomes/mestari_secret.lua",
	"data/scripts/biomes/pyramid_entrance.lua",
	"data/scripts/biomes/vault_entrance.lua",
	"data/scripts/biomes/secret_entrance.lua",
	"data/scripts/biomes/snowcastle_cavern.lua",
	"data/scripts/biomes/temple_altar_right_snowcastle_empty.lua",
	"data/scripts/biomes/mountain/mountain_right_stub.lua",
	"data/scripts/biomes/rainforest_dark.lua",
	"data/scripts/biomes/smokecave_left.lua",
	"data/scripts/biomes/temple_altar_left_empty.lua",
	"data/scripts/biomes/ending_placeholder.lua",
	"data/scripts/biomes/wizardcave_entrance.lua",
	"data/scripts/biomes/excavationsite_cube_chamber.lua",
	"data/biome_impl/static_tile/temples_common.lua",
	"data/scripts/biomes/scale.lua",
	"data/scripts/biomes/lake.lua",
	"data/scripts/biomes/snowcave_secret_chamber.lua",
	"data/scripts/biomes/mountain_lake.lua",
	"data/scripts/biomes/ghost_secret.lua",
	"data/scripts/biomes/lake_statue.lua",
	"data/scripts/biomes/temple_altar_left.lua",
	"data/scripts/biomes/niilo_testroom_c.lua",
	"data/scripts/biomes/liquidcave.lua",
	"data/scripts/biomes/pyramid_top.lua",
	"data/scripts/biomes/sandcave.lua",
	"data/scripts/biomes/coalmine.lua",
	"data/scripts/biomes/mountain/mountain_floating_island.lua",
	"data/scripts/biomes/desert.lua",
	"data/scripts/biomes/niilo_testroom_b.lua",
	"data/scripts/biomes/mystery_teleport.lua",
	"data/scripts/biomes/vault_frozen.lua",
	"data/scripts/biomes/temple_wall.lua",
	"data/scripts/biomes/shop_room.lua",
	"data/scripts/biomes/tower_end.lua",
	"data/scripts/biomes/snowcastle.lua",
	"data/scripts/biomes/lavalake_racing.lua",
	"data/scripts/biomes/friend_4.lua",
	"data/scripts/biomes/gun_room.lua",
	"data/scripts/biomes/coalmine_alt.lua",
	"data/scripts/biomes/winter.lua",
	"data/scripts/biomes/mountain/mountain_left_entrance.lua",
	"data/scripts/biomes/moon_room.lua",
	"data/scripts/biomes/boss_victoryroom.lua",
	"data/scripts/biomes/secret_lab.lua",
	"data/scripts/biomes/smokecave_right.lua",
	"data/scripts/biomes/mountain/mountain_center.lua",
	"data/scripts/biomes/crypt.lua",
	"data/scripts/biomes/teleroom.lua",
	"data/scripts/biomes/town.lua",
	"data/scripts/biomes/bridge.lua",
	"data/scripts/biomes/mountain_tree.lua",
	"data/scripts/biomes/temple_altar_right_empty.lua",
	"data/scripts/biomes/pyramid_left.lua",
	"data/scripts/biomes/vault.lua",
	"data/scripts/biomes/hills.lua",
	"data/scripts/biomes/alchemist_secret.lua",
	"data/scripts/biomes/temple_wall_ending.lua",
	"data/scripts/biomes/mountain/mountain_right_2.lua",
	"data/scripts/biomes/pyramid_right.lua",
	"data/scripts/biomes/temple_altar_empty.lua",
	"data/scripts/biomes/tower.lua",
	"data/scripts/biomes/solid_wall_hidden_cavern.lua",
	"data/scripts/biomes/sandroom.lua",
	"data/scripts/biomes/meat.lua",
	"data/scripts/biomes/dragoncave.lua",
	"data/scripts/biomes/lake_deep.lua",
	"data/scripts/biomes/lavalake_pit.lua",
	"data/scripts/biomes/mountain/mountain_left_2.lua",
	"data/scripts/biomes/mountain/mountain_right_entrance_2.lua",
	"data/scripts/biomes/mountain/mountain_left_3.lua",
	"data/scripts/biomes/roadblock.lua",
	"data/scripts/biomes/snowcave.lua",
	"data/scripts/biomes/robot_egg.lua",
	"data/scripts/biomes/temple_altar_right.lua",
	"data/scripts/biomes/essenceroom_air.lua",
	"data/scripts/biomes/friend_3.lua",
	"data/scripts/biomes/rainforest.lua",
	"data/biome_impl/static_tile/watchtower.lua",
	"data/scripts/biomes/wandcave.lua",
	"data/scripts/biomes/friend_6.lua",
	"data/scripts/biomes/null_room.lua",
	"data/scripts/biomes/essenceroom_alc.lua",
	"data/scripts/biomes/meatroom.lua",
	"data/scripts/biomes/friend_2.lua",
	"data/scripts/biomes/wizardcave.lua",
	"data/scripts/biomes/roboroom.lua",
	"data/scripts/biomes/essenceroom_hell.lua",
	"data/scripts/biomes/lavalake.lua",
	"data/scripts/biomes/ocarina.lua",
	"data/scripts/biomes/temple_altar_secret.lua",
	"data/scripts/biomes/excavationsite.lua",
	"data/scripts/biomes/friend_1.lua",
	"data/scripts/biomes/pyramid_hallway.lua",
	"data/scripts/biomes/funroom.lua",
	"data/scripts/biomes/clouds.lua",
	"data/scripts/biomes/boss_limbs_arena.lua",
	"data/scripts/biomes/robobase.lua",
	"data/scripts/biomes/friend_5.lua",
	"data/scripts/biomes/song_room.lua",
	"data/scripts/biomes/watercave.lua",
	"data/scripts/biomes/essenceroom.lua",
	"data/scripts/biomes/smokecave_middle.lua",
	"data/scripts/biomes/greed_room.lua",
	"data/scripts/biomes/temple_altar.lua",
	"data/scripts/biomes/laboratory.lua",
	"data/scripts/biomes/rock_room.lua",
	"data/scripts/biomes/secret_altar.lua",
	"data/scripts/biomes/end_wall.lua",
	"data/scripts/biomes/niilo_testroom_d.lua",
	"data/scripts/biomes/fungicave.lua",
	"data/scripts/biomes/temple_altar_right_snowcave.lua",
	"data/scripts/biomes/boss_arena_top.lua",
	"data/scripts/biomes/solid_wall_tower.lua",
	"data/scripts/biomes/gourd_room.lua",
	"data/scripts/biomes/magic_gate.lua",
	"data/scripts/biomes/pyramid.lua",
	"data/scripts/biomes/fungiforest.lua",
	"data/scripts/biomes/mountain/mountain_top.lua",
	"data/scripts/biomes/temple_altar_right_snowcastle.lua",
}

local presets = {
	"mods/noita.fairmod/files/content/tmtrainer_biomes/presets/random.lua",
	"mods/noita.fairmod/files/content/tmtrainer_biomes/presets/reward.lua",
}

local tilesets = {
	--no worky
	--"data/biome_impl/static_tile/temples-assets/darkness_fg.png",
	--"data/biome_impl/static_tile/temples-assets/barren_fg.png",
	--"data/biome_impl/static_tile/temples-assets/watchtower_fg.png",
	--"data/biome_impl/static_tile/temples-assets/boss_fg.png",
	--"data/biome_impl/static_tile/temples-assets/potion_mimics_fg.png",


	--"mods/noita.fairmod/files/content/backrooms/wang/rooms_test.png",
	--"mods/noita.fairmod/files/content/milk_biome/wang_tiles/milk_biome.png",


	"mods/noita.fairmod/files/content/hamis_biome/biome/wang.png",
	"data/wang_tiles/coalmine_alt.png",
	"data/wang_tiles/the_sky.png",
	"data/wang_tiles/clouds.png",
	"data/wang_tiles/water.png",
	"data/wang_tiles/town_under.png",
	"data/wang_tiles/wizardcave.png",
	"data/wang_tiles/robobase.png",
	"data/wang_tiles/liquidcave.png",
	"data/wang_tiles/excavationsite.png",
	"data/wang_tiles/vault_frozen.png",
	"data/wang_tiles/snowcastle.png",
	"data/wang_tiles/sandcave.png",
	"data/wang_tiles/snowchasm.png",
	"data/wang_tiles/fungicave.png",
	"data/wang_tiles/wand.png",
	"data/wang_tiles/rainforest.png",
	"data/wang_tiles/vault.png",
	"data/wang_tiles/snowcave.png",
	"data/wang_tiles/pyramid.png",
	"data/wang_tiles/crypt.png",
	"data/wang_tiles/rainforest_dark.png",
	"data/wang_tiles/meat.png",
	"data/wang_tiles/rainforest_open.png",
	"data/wang_tiles/coalmine.png",
	"data/wang_tiles/the_end.png",
	"data/wang_tiles/fungiforest.png",
}

local ground_material_options = {
	{
		material = "fairmod_swiss",
		weight = 2,
	},
	{
		material = "fairmod_cheddar",
		weight = 2,
	},
	{
		material = "milk",
		weight = 3,
	},
	{
		material = "fairmod_mozzarella",
		weight = 2,
	},
	{
		material = "fairmod_parmesan",
		weight = 1,
	},
	{
		material = "backrooms_zone_1_wall",
		weight = 5,
	},
	{
		material = "backrooms_zone_1_ceiling",
		weight = 5,
	},
	{
		material = "backrooms_zone_1_floor",
		weight = 5,
	},
	{
		material = "fairmod_hamis_meat",
		weight = 5,
	},
	{
		material = "fairmod_hamis_soil_lush",
		weight = 2,
	},
	{
		material = "fairmod_hamis_sand_static_rainforest_dark",
		weight = 2,
	},
	{
		material = "hescoming",
		weight = 3.33,
	},
	{
		material = "snail_static_shell",
		weight = 5,
	},
	{
		material = "snail_static_meat",
		weight = 5,
	},

	{
		material = "rock_hard_border",
		weight = 10,
	},
	{
		material = "rock_hard",
		weight = 10,
	},
	{
		material = "templebrickdark_static",
		weight = 10,
	},
	{
		material = "cloud",
		weight = 10,
	},
	{
		material = "rock_static_cursed",
		weight = 10,
	},
	{
		material = "rock_static_cursed_green",
		weight = 3,
	},
	{
		material = "rock_static_poison",
		weight = 5,
	},
	{
		material = "skullrock",
		weight = 10,
	},
	{
		material = "rock_static_wet",
		weight = 10,
	},
	{
		material = "lavarock_static",
		weight = 10,
	},
	{
		material = "meteorite_static",
		weight = 10,
	},
	{
		material = "templerock_static",
		weight = 10,
	},
	{
		material = "templebrick_static_broken",
		weight = 5,
	},
	--testing{
	--testing	material = "templebrick_golden_static",
	--testing	weight = 5,
	--testing},
	--testing{
	--testing	material = "templebrick_diamond_static",
	--testing	weight = 5,
	--testing},
	{
		material = "templebrick_static_ruined",
		weight = 10,
	},
	{
		material = "glowstone",
		weight = 3,
	},
	--testing{
	--testing	material = "templebrick_red",
	--testing	weight = 10,
	--testing},
	{
		material = "glowstone_potion",
		weight = 2,
	},
	{
		material = "glowstone_altar_hdr",
		weight = 2,
	},
	{
		material = "the_end",
		weight = 10,
	},
	{
		material = "steel_static",
		weight = 5,
	},
	{
		material = "steelmoss_static",
		weight = 5,
	},
	{
		material = "steel_rusted_no_holes",
		weight = 5,
	},
	{
		material = "steel_grey_static",
		weight = 5,
	},
	{
		material = "steelfrost_static",
		weight = 5,
	},
	{
		material = "steelmoss_slanted",
		weight = 5,
	},
	{
		material = "steelpipe_static",
		weight = 5,
	},
	{
		material = "steel_static_strong",
		weight = 5,
	},
	{
		material = "steel_static_unmeltable",
		weight = 5,
	},
	{
		material = "rock_static_glow",
		weight = 10,
	},
	{
		material = "snow_static",
		weight = 10,
	},
	{
		material = "sand_static",
		weight = 10,
	},
	{
		material = "sand_static_rainforest",
		weight = 4,
	},
	{
		material = "sand_static_rainforest_dark",
		weight = 4,
	},
	{
		material = "bone_static",
		weight = 10,
	},
	{
		material = "rust_static",
		weight = 2,
	},
	{
		material = "meat_static",
		weight = 10,
	},
	{
		material = "sand_static_red",
		weight = 10,
	},
	{
		material = "nest_static",
		weight = 3,
	},
	{
		material = "rock_static_trip_secret",
		weight = 20,
	},
	{
		material = "rock_static_trip_secret2",
		weight = 20,
	},
	{
		material = "rock_static_purple",
		weight = 8,
	},
	{
		material = "water_static",
		weight = 10,
	},
	{
		material = "spore_pod_stalk",
		weight = 4,
	},
	{
		material = "rock_hard",
		weight = 10,
	},
	{
		material = "rock_static_fungal",
		weight = 20,
	},
	{
		material = "wood_tree",
		weight = 5,
	},
	{
		material = "rock_magic_gate",
		weight = 7,
	},
	{
		material = "rock_vault",
		weight = 14,
	},
	{
		material = "rock_static_grey",
		weight = 10,
	},
	{
		material = "rock_static_radioactive",
		weight = 10,
	},
	{
		material = "gold",
		weight = 1,
	},
	{
		material = "gold_radioactive",
		weight = 1,
	},
}

local ore_material_options = {
	{
		material = "gold",
		weight = 10,
	},
	{
		material = "gold_radioactive",
		weight = 10,
	},
	{
		material = "water_static",
		weight = 10,
	},
	{
		material = "just_death",
		weight = 5,
	},
}

local ambience_and_music = {
	"crypt",
	"excavationsite",
	"cave",
	"snowcastle",
	"temple",
	"hills",
	"vault",
	"fungicave",
	"rainforest",
	"caves",
	"wandcave",
	"snowcave",
	"barren",
	"coalmine",
	"surface1",
	"tower",
	"potion_mimics",
	"side_biome_action",
	"boss01",
	"the_end",
	"darkness",
	"watercave",
	"surface0",
	"smokecave",
	"desert",
	"ancient_tracks",
	"oneshot",
	"robobase",
	"mountain",
	"menu",
	"intro",
	"lavalake",
	"credits",
	"miniboss",
	"winter",
	"wizardcave",
}

local music_sound_events = {
	"music/ancient_tracks/01",
	"music/oneshot/05",
	"music/potion_mimics/01",
	"music/robobase/00",
	"music_reverb",
	"music/oneshot/sax_mysterious",
	"music/temple/necromancer_shop",
	"music/mountain/enter",
	"music/menu/loading05",
	"music/intro/00_old",
	"music/lavalake/enter",
	"music/credits/01",
	"music/barren/01",
	"music/oneshot/tripping_balls_01",
	"music/miniboss/00",
	"music/menu/loading06",
	"music/oneshot/sax_dramatic",
	"music/intro/00track",
	"music/credits/02",
	"music/winter/enter",
	"music/wizardcave/00",
	"music/oneshot/03",
	"music/menu/loading03",
	"music/fungiforest/00",
	"music/oneshot/00",
	"music/oneshot/dark_02",
	"music/menu/loading02",
	"music/rainforest_dark/00",
	"music/oneshot/tripping_balls_02",
	"music/menu/loading00",
	"music/oneshot/huussi",
	"music/menu/main",
	"music/temple/enter",
	"music/credits/00",
	"music/winter2/00",
	"music/surface1/00",
	"music/credits/03",
	"music/desert/enter",
	"music/oneshot/dark_03",
	"music/darkness/01",
	"music/side_biome_action/00",
	"music/tower/00",
	"music/intro/00",
	"music/oneshot/dark_01",
	"music/oneshot/02",
	"music/ancient_tracks/00",
	"music/oneshot/04",
	"music/ancient_tracks/02",
	"music/oneshot/01",
	"music/oneshot/ei_vihuja_01",
	"music/oneshot/heaven_03",
	"music/menu/loading01",
	"music/ancient_tracks/03",
	"music/menu/loading04",
	"music/watercave/00",
}

local override_whitelist = {
	[0xff454412] = .005, --coal pits
	[0xffD57517] = .005, --snowy depths
	[0xffFF4600] = .005, --hiisi base
	[0xff008080] = .005, --top jungle
	[0xff0084A0] = .005, --bottom jungle
	[0xff008000] = .01, --vault
	[0xff426C78] = .005, --temple of the art

	[0xff3D3D3D] = .02, --edr
	[0xff3E3D3F] = .02, --cursed rock
	[0xff026AFF] = .02, --volcanic lake

	[0xff373E3D] = .005, --tower1
	[0xff383E3D] = .005, --tower2
	[0xff393E3D] = .005, --tower3
	[0xff3A3E3D] = .005, --tower4
	[0xff3B3E3D] = .005, --tower5
	[0xff3C3E3D] = .005, --tower6
	[0xff3D3E3D] = .005, --tower7
	[0xff3E3E3D] = .005, --tower8
	[0xff3F3E3D] = .005, --tower9
	[0xff403E3D] = .005, --tower10

	[0xffF061E8] = .005, --fungal caverns
	[0xffFF61A8] = .005, --overgrown cavern
	[0xff4BA089] = .005, --abandoned alchemy lab
	[0xff005C37] = .005, --lukki lair
	[0xff282857] = .005, --meat
	[0xff426E00] = .005, --magical temple
	[4282543104] = .005, --alt magical temple id cuz idk the VERY CORRECT ABGR VALUE isnt working at all
	[0xff866172] = .005, --wizards' den
	[0xff67524E] = .005, --powerplant
	[0xff32CDE1] = .005, --underground desert
	[0xffA88000] = .005, --frozen vault
	[0xffBDA577] = .005, --forgotten cavern
	[0xff11E37B] = .005, --bottom of lava pit

	[0xff17D536] = .005, --overworld hills
	[0xff4499CC] = .005, --desert
	[0xffE3D8D6] = .005, --frozen wasteland
	[0xffF15811] = .025, --lake
	[0xffF13311] = .005, --lake surface
	[0xff11E348] = .005, --rainbow steps
	[0xff8DCFF7] = .005, --pond?
	[0xff0000B7] = .005, --watchtower?
	[0xff5F8F96] = .005, --pyramid left side
	[0xff117F96] = .005, --pyramid
	[0xff968F96] = .005, --pyramid right side

	[0xffC9D536] = .005, --cloudscape
	[0xffF0E6D3] = .005, --work (sky)
	[0xff0A0F3C] = .005, --work (hell)
	[0xff11E333] = 1, --hills2
	[0xff0000FE] = .005, --bottom of floating terrain
}

local a,b,c,d,e,f,g = GameGetDateAndTimeLocal() --doing this fn to experiment with diff permutations more easily
local BIOMES_TO_GENERATE = 40
local seed_offset = d*e*f+e+f
local force_override_all = true


local biomes = 0
local function GenerateRandomBiome(name, script)
	--SetRandomSeed(491, 412)

	local bg = backgrounds[Random(1, #backgrounds)]

	local colour_gradings = {
		1 - Random()^3,
		1 - Random()^3,
		1 - Random()^3,
	}
	if Random(1, 8) == 8 then
		if Random(1, 5) == 5 then
			for _,value in ipairs(colour_gradings) do
				value = value * Randomf(-10, 10)
			end
		else
			local mult = Randomf(-10, 10)
			for _,value in ipairs(colour_gradings) do
				value = value * mult
			end
		end
	end

	local tileset = tilesets[Random(1, #tilesets)]
	local biome = nxml.new_element("Biome", nil, {
		nxml.new_element("Topology", {
			name = name,
			type = "BIOME_WANG_TILE",
			wang_template_file = tileset,
			lua_script = script, --scripts[Random(1, #scripts)],

			color_grading_r = colour_gradings[1],
			color_grading_g = colour_gradings[2],
			color_grading_b = colour_gradings[3],
			background_image = bg.image,
			background_edge_left = bg.edge_left,
			background_edge_right = bg.edge_right,
			background_edge_top = bg.edge_top,
			background_edge_bottom = bg.edge_bottom,
			background_edge_priority = tostring(Random(-5, 14)),
			audio_music_2 = ambience_and_music[Random(1, #ambience_and_music)],
			audio_ambience = ambience_and_music[Random(1, #ambience_and_music)],
			audio_ambience_surface = ambience_and_music[Random(1, #ambience_and_music)],
			audio_music_enter = music_sound_events[Random(1, #music_sound_events)],
		})
	})

	local materials = nxml.new_element("Materials", {name = "test_biome"})

	for i = 1, Random(0,6) do
		materials:add_child(nxml.new_element("MaterialComponent", {
			material_name = RandomFromTable(ground_material_options).material,
			material_index = Random(-9, 10),
			material_min = Random(),
			material_max = Random() + 1,
			rare_polka_is_boxed = Random(0, 1),
		}))
	end

	biome:add_child(materials)

	return biome
end

local init = {}


local biome_index = {}

init.OnMagicNumbersAndWorldSeedInitialized = function()
	SetRandomSeed(2352, -1354+seed_offset)

	local biome_colours = {}
	local current_colour = tonumber("FF000000", 16)
	for xml in nxml.edit_file("data/biome/_biomes_all.xml") do
		for biome in xml:each_of("Biome") do
			biome_index[(biome.attr.color):lower()] = biome.attr.biome_filename
		end
		for i = 0, BIOMES_TO_GENERATE-1 do
			local scriptpath = "mods/noita.fairmod/generated/biome_"..i..".lua"
			local FILE1,FILE2,FILE3,FILE4,FILE5 =
				scripts[Random(1, #scripts)],
				scripts[Random(1, #scripts)],
				scripts[Random(1, #scripts)],
				scripts[Random(1, #scripts)],
				scripts[Random(1, #scripts)]
			ModTextFileSetContent("mods/noita.fairmod/generated/empty.lua", "--")
			FILE1,FILE2,FILE3,FILE4,FILE5 =
				"mods/noita.fairmod/generated/empty.lua",
				"mods/noita.fairmod/generated/empty.lua",
				"mods/noita.fairmod/generated/empty.lua",
				"mods/noita.fairmod/generated/empty.lua",
				"mods/noita.fairmod/generated/empty.lua"
			ModTextFileSetContent(scriptpath,
				ModTextFileGetContent("mods/noita.fairmod/files/content/tmtrainer_biomes/template_script.lua")
					:gsub("BIOMESEED1", Random())
					:gsub("BIOMESEED2", Random())
					:gsub("FILE1", FILE1)
					:gsub("FILE2", FILE2)
					:gsub("FILE3", FILE3)
					:gsub("FILE4", FILE4)
					:gsub("FILE5", FILE5)
					:gsub("PRESET", presets[2])
			)
			local biomexml = tostring(GenerateRandomBiome(i, scriptpath))
			--print(biomexml)
			ModTextFileSetContent("mods/noita.fairmod/generated/biome_"..i..".xml", biomexml)

			--print(current_colour)
			current_colour = current_colour + 1
			while biome_index[("%08x"):format(current_colour)] do
				current_colour = current_colour + 1
			end

			biome_colours[#biome_colours+1] = 0xFF000000
				+ bit.lshift(bit.band(current_colour, 0xFF), 16)
				+ bit.lshift(bit.band(bit.rshift(current_colour, 8), 0xFF), 8)
				+ bit.band(bit.rshift(current_colour, 16), 0xFF)

			xml:add_child(nxml.new_element("Biome", {
				biome_filename = "mods/noita.fairmod/generated/biome_"..i..".xml",
				height_index = Random(0, 14),
				color = ("%08x"):format(current_colour)
			}))
		end
	end

	local biomemap,w,h = ModImageMakeEditable("data/biome_impl/biome_map.png", 0, 0)
	for y = 0, h-1 do
		for x = 0, w-1 do
			local logging = false
			if x == 49 and y == 36 then logging = true end
			local hex = biome_colours[Random(1, #biome_colours)]
			local pixel = ModImageGetPixel(biomemap, x, y) % 2 ^ 32
			if logging then print(pixel) print(0xff11E333) end
			local placement_chance = override_whitelist[pixel]
			if (placement_chance and Random() < placement_chance) or force_override_all then ModImageSetPixel(biomemap, x, y, hex) end
		end
	end
end

init.OnPlayerSpawned = function()
	print("aaaaaaaaaaaaaaaaaaa")
	--dofile_once("mods/noita.fairmod/files/content/tmtrainer_biomes/template_script.lua")
end

return init