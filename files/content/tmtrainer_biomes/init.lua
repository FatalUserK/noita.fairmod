local backgrounds = {
	{
		image = "mods/noita.fairmod/files/content/milk_biome/cheesebackground.png",
		edge_left = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-left.png",
		edge_right = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-right.png",
		edge_top = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-top.png",
		edge_bottom = "mods/noita.fairmod/files/content/milk_biome/cheesebackground-bottom.png",
	},
	{
		image = "data/weather_gfx/background_crypt.png",
		edge_left = "data/weather_gfx/edges/background_crypt_left.png",
		edge_right = "data/weather_gfx/edges/background_crypt_right.png",
		edge_top = "data/weather_gfx/edges/background_crypt_top.png",
		edge_bottom = "data/weather_gfx/edges/background_crypt_bottom.png",
	},
	{
		image = "",
		edge_left = "",
		edge_right = "",
		edge_top = "",
		edge_bottom = "",
	},
	{
		image = "",
		edge_left = "",
		edge_right = "",
		edge_top = "",
		edge_bottom = "",
	},
}

local materials = {
	fairmod_swiss = 5,
	fairmod_cheddar = 5,
	milk = 5,
	fairmod_mozzarella = 5,
	fairmod_parmesan = 5,
}

local biome_types = {
	"BIOME_PROCEDURAL",
	"BIOME_BITMAP",
	"BIOME_WANG_TILE",
}

local fog_of_war_types = {
	"DEFAULT",
	"HEAVY_CLEAR_AT_PLAYER",
	"HEAVY_CLEAR_WITH_MAGIC",
	"HEAVY_NO_CLEAR",
}

local noise_types = {
	"IQ2_SIMPLEX1234",
	"IQ_SIMPLEX",
	"SIN_CAPPED_EVERYTHING",
	"SIN_CAPPED_SIMPLEX",
}

local general_noise = {
	"IQNoise",
	"DirtyPeeNoise",
	"QemNoise",
	"WhiteNoise",
	"MixNoise",
	"SimplexNoise",
	"STB_Perlin",
	"FastBlockNoise",
	"SimplexNoise1234",
}