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

dofile_once("FILE1")
dofile_once("FILE2")
dofile_once("FILE3")
dofile_once("FILE4")
dofile_once("FILE5")

--function init() end

SetRandomSeed(biomeseed[1], biomeseed[2])
CHEST_LEVEL = chest_level

--dofile_once("mods/noita.fairmod/files/content/tmtrainer_biomes/register_spawn_funcs.lua")


function random(x, y, w, h)
	print(x .. ", " .. y)
	--EntityLoad()
end

function spawn_small_enemies(x, y, w, h)
	--spawn(g_small_enemies,x,y)
end

function spawn_big_enemies(x, y, w, h)

end

function spawn_items(x, y, w, h)

end

function spawn_props(x, y, w, h)

end

function spawn_props2(x, y, w, h)

end

function spawn_props3(x, y, w, h)

end

function spawn_lamp(x, y, w, h)

end

function load_pixel_scene(x, y, w, h)

end

function load_pixel_scene2(x, y, w, h)

end

function spawn_unique_enemy(x, y, w, h)

end

function spawn_unique_enemy2(x, y, w, h)

end

function spawn_unique_enemy3(x, y, w, h)

end

function spawn_ghostlamp(x, y, w, h)

end

function spawn_candles(x, y, w, h)

end

function spawn_potion_altar(x, y, w, h)

end

function spawn_potions(x, y, w, h)

end

function spawn_apparition(x, y, w, h)

end

function spawn_heart(x, y, w, h)

end

function spawn_wands(x, y, w, h)

end

function spawn_portal(x, y, w, h)

end

function spawn_end_portal(x, y, w, h)

end

function spawn_orb(x, y, w, h)

end

function spawn_perk(x, y, w, h)

end

function spawn_all_perks(x, y, w, h)

end

function spawn_wand_trap(x, y, w, h)

end

function spawn_wand_trap_ignite(x, y, w, h)

end

function spawn_wand_trap_electricity_source(x, y, w, h)

end

function spawn_wand_trap_electricity(x, y, w, h)

end

function spawn_moon(x, y, w, h)

end

function spawn_collapse(x, y, w, h)

end



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

local lamp_lists = {

}

local global_lists = {
	"g_small_enemies",
	"g_big_enemies",
	"g_lamp",
	"g_props",
	"g_unique_enemy",
}


for index, value in ipairs(funcs) do
	if _G[value] == nil then
		print("Setting function " .. value .. " to empty")
		_G[value] = random
	end
end

print("done.")