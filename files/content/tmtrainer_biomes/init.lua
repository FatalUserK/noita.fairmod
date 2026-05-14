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
	"data/scripts/biomes/orbrooms/orbroom_02.lua",
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
	"data/scripts/biomes/orbrooms/orbroom_06.lua",
	"data/scripts/biomes/sandcave.lua",
	"data/scripts/biomes/coalmine.lua",
	"data/scripts/biomes/mountain/mountain_floating_island.lua",
	"data/scripts/biomes/desert.lua",
	"data/scripts/biomes/niilo_testroom_b.lua",
	"data/scripts/biomes/mystery_teleport.lua",
	"data/scripts/biomes/vault_frozen.lua",
	"data/scripts/biomes/temple_wall.lua",
	"data/scripts/biomes/orbrooms/orbroom_04.lua",
	"data/scripts/biomes/shop_room.lua",
	"data/scripts/biomes/tower_end.lua",
	"data/scripts/biomes/snowcastle.lua",
	"data/scripts/biomes/orbrooms/orbroom_09.lua",
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
	"data/scripts/biomes/orbrooms/orbroom_07.lua",
	"data/scripts/biomes/temple_wall_ending.lua",
	"data/scripts/biomes/mountain/mountain_right_2.lua",
	"data/scripts/biomes/pyramid_right.lua",
	"data/scripts/biomes/temple_altar_empty.lua",
	"data/scripts/biomes/tower.lua",
	"data/scripts/biomes/solid_wall_hidden_cavern.lua",
	"data/scripts/biomes/sandroom.lua",
	"data/scripts/biomes/meat.lua",
	"data/scripts/biomes/dragoncave.lua",
	"data/scripts/biomes/orbrooms/orbroom_11.lua",
	"data/scripts/biomes/orbrooms/orbroom_08.lua",
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
	"data/scripts/biomes/orbrooms/orbroom_10.lua",
	"data/scripts/biomes/friend_5.lua",
	"data/scripts/biomes/song_room.lua",
	"data/scripts/biomes/watercave.lua",
	"data/scripts/biomes/orbrooms/orbroom_00.lua",
	"data/scripts/biomes/essenceroom.lua",
	"data/scripts/biomes/orbrooms/orbroom_03.lua",
	"data/scripts/biomes/smokecave_middle.lua",
	"data/scripts/biomes/greed_room.lua",
	"data/scripts/biomes/temple_altar.lua",
	"data/scripts/biomes/laboratory.lua",
	"data/scripts/biomes/rock_room.lua",
	"data/scripts/biomes/secret_altar.lua",
	"data/scripts/biomes/orbrooms/orbroom_01.lua",
	"data/scripts/biomes/end_wall.lua",
	"data/scripts/biomes/orbrooms/orbroom_05.lua",
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

local tilesets = {
	"mods/noita.fairmod/files/content/hamis_biome/biome/wang.png",
	"mods/noita.fairmod/files/content/backrooms/wang/rooms_test.png",
	"mods/noita.fairmod/files/content/milk_biome/wang_tiles/milk_biome.png",

	"data/wang_tiles/coalmine_alt.png",
	"data/wang_tiles/the_sky.png",
	"data/wang_tiles/clouds.png",
	"data/wang_tiles/water.png",
	"data/biome_impl/static_tile/temples-assets/darkness_fg.png",
	"data/wang_tiles/town_under.png",
	"data/biome_impl/static_tile/temples-assets/barren_fg.png",
	"data/biome_impl/static_tile/temples-assets/watchtower_fg.png",
	"data/biome_impl/static_tile/temples-assets/boss_fg.png",
	"data/wang_tiles/wizardcave.png",
	"data/wang_tiles/robobase.png",
	"data/wang_tiles/liquidcave.png",
	"data/wang_tiles/excavationsite.png",
	"data/wang_tiles/vault_frozen.png",
	"data/wang_tiles/snowcastle.png",
	"data/wang_tiles/sandcave.png",
	"data/wang_tiles/snowchasm.png",
	"data/wang_tiles/fungicave.png",
	"data/biome_impl/static_tile/temples-assets/potion_mimics_fg.png",
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

local music_options = {
	"ancient_tracks",
	"oneshot",
	"potion_mimics",
	"robobase",
	"oneshot",
	"temple",
	"mountain",
	"menu",
	"intro",
	"lavalake",
	"credits",
	"barren",
	"miniboss",
	"menu",
	"winter",
	"wizardcave",
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

local function GenerateRandomBiome()
	--SetRandomSeed(491, 412)

	local bg = backgrounds[Random(1, #backgrounds)]

	local biome = nxml.new_element("Biome", nil, {
		nxml.new_element("Topology", {
			name="$biome_hamis_biome",
			type = "BIOME_WANG_TILE",
			wang_template_file = tilesets[Random(1, #tilesets)],
			lua_script = "mods/noita.fairmod/files/content/tmtrainer_biomes/template_script.lua", --scripts[Random(1, #scripts)],

			color_grading_r = tostring(1 - Random()^2),
			color_grading_g = tostring(1 - Random()^2),
			color_grading_b = tostring(1 - Random()^2),
			background_image = bg.image,
			background_edge_left = bg.edge_left,
			background_edge_right = bg.edge_right,
			background_edge_top = bg.edge_top,
			background_edge_bottom = bg.edge_bottom,
			background_edge_priority = tostring(Random(-5, 14)),
			audio_music_2 = ambience_and_music[Random(1, #ambience_and_music)],
			audio_ambience = ambience_and_music[Random(1, #ambience_and_music)],
			audio_ambience_surface = ambience_and_music[Random(1, #ambience_and_music)],
			audio_music_enter = music_sound_events[Random(1, #music_sound_events)]
		}), nxml.new_element("Materials", {name = "test_biome"})
	})

	local materials = nxml.new_element("Materials", {name = ""})

	for i = 1, Random(1,5) do
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
	SetRandomSeed(2352, -1354)


	print(tostring(tonumber("00FF00", 16)))
	print(("%08x"):format(1358))

	local biome_colours = {}
	local current_colour = tonumber("FF000000", 16)
	for xml in nxml.edit_file("data/biome/_biomes_all.xml") do
		for biome in xml:each_of("Biome") do
			biome_index[(biome.attr.color):lower()] = biome.attr.biome_filename
		end
		for i = 0, 9 do
			local biomexml = tostring(GenerateRandomBiome())
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
			print("biome: " .. ("%08x"):format(current_colour))
			print("modimage:" .. ("%08x"):format(biome_colours[#biome_colours]))

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
			local hex = Random(1, #biome_colours)
			ModImageSetPixel(biomemap, x, y, hex)
		end
	end

	local outputs = {
		wang_template_file = {},
		lua_script = {},
		wang_map_width = {},
		wang_map_height = {},
		audio_ambience = {},
		audio_ambience_surface = {},
		audio_music_2 = {},
		audio_music_enter = {},
	}
	for _,value in pairs(biome_index) do
		for biome in nxml.edit_file(value) do
			local topology = biome:first_of("Topology")
			if not topology then goto continue end
			for key,index in pairs(outputs) do
				if topology.attr[key] then
					index[topology.attr[key]] = true
				end
			end
			::continue::
		end
	end

	for key, output in pairs(outputs) do
		do break end
		print(key .. ":")
		for value in pairs(output) do
			print("  " .. value)
		end
	end
end

init.OnPlayerSpawned = function()
	print("aaaaaaaaaaaaaaaaaaa")
	--dofile_once("mods/noita.fairmod/files/content/tmtrainer_biomes/template_script.lua")
end

return init