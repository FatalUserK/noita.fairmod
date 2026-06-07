dofile_once("mods/noita.fairmod/files/content/tmtrainer_biomes/biome_utilities.lua")

local funcs = {
	"spawn_small_enemies",
	"spawn_big_enemies",
	"spawn_items",--
	"spawn_props",
	"spawn_props2",
	"spawn_props3",
	"spawn_lamp",
	"load_pixel_scene",
	"load_pixel_scene2",
	"spawn_unique_enemy",
	"spawn_unique_enemy2",
	"spawn_unique_enemy3",
	"spawn_ghostlamp",
	"spawn_candles",
	"spawn_wands",
	"spawn_potion_altar",--
	"spawn_potions",--
	"spawn_apparition",--
	"spawn_heart",--
	"spawn_portal",--
	"spawn_end_portal",--
	"spawn_orb",--
	"spawn_perk",--
	"spawn_all_perks",--
	"spawn_wand_trap",--
	"spawn_wand_trap_ignite",--
	"spawn_wand_trap_electricity_source",--
	"spawn_wand_trap_electricity",--
	"spawn_moon",--
	"spawn_collapse",--
}

local random_funcs = {
	{
		spawn_glitch_enemy,
		weight = 10
	},
	{
		spawn_random_reward,
		weight = 5
	},
}

for index, value in ipairs(funcs) do
	_G[value] = RandomFromTable(random_funcs)[1]
end