RegisteredFunctions = {}
local Old_RegSpawnFunc = RegisterSpawnFunction
RegisterSpawnFunction = function(x, y)
	if RegisteredFunctions[x] then
		RegisteredFunctions[x][2] = RegisteredFunctions[x][2] + 1
		return
	end
	RegisteredFunctions[x] = {y, 1}
	--Old_RegSpawnFunc(x, y)
end
--RSF DOCUMENTED

local biomeseed = {BIOMESEED1, BIOMESEED2}
local chest_level = CHESTLEVEL



local function spawn_camerabound(t,x,y)
	local target = RandomFromTableConditional(t, {
		x=x, y=y,
		biomeseed=biomeseed,
		chest_level=chest_level,
		biome_name=BIOMENAME
	})
end

local function spawn_load(t,x,y)

end

g_lamp = {}
g_unique_enemy = {}
g_small_enemies = {}
g_big_enemies = {}
g_props = {}
g_props2 = {}
g_props3 = {}
g_pixel_scene_01 = {}
g_pixel_scene_02 = {}
g_unique_enemy = {}
g_unique_enemy2 = {}
g_unique_enemy3 = {}
g_ghostlamp = {}
g_candles = {}
g_items = {}


dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/director_helpers_design.lua")
dofile_once("data/scripts/biome_scripts.lua")
dofile_once("data/scripts/biome_modifiers.lua")
dofile( "data/scripts/items/generate_shop_item.lua" )

--dofile_once("FILE1")
--dofile_once("FILE2")
--dofile_once("FILE3")
--dofile_once("FILE4")
--dofile_once("FILE5")

--function init() end

SetRandomSeed(biomeseed[1], biomeseed[2])
CHEST_LEVEL = chest_level

--dofile_once("mods/noita.fairmod/files/content/tmtrainer_biomes/register_spawn_funcs.lua")

dofile_once("PRESET")


local global_lists = {
	"g_small_enemies",
	"g_big_enemies",
	"g_lamp",
	"g_props",
	"g_unique_enemy",
}



print("done.")