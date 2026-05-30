dofile_once("mods/noita.fairmod/files/scripts/utils/utilities.lua")

---@type nxml
local nxml = dofile_once("mods/noita.fairmod/files/lib/nxml.lua")


--Hämis shall never be harmed, not even in the absence of the Fairmod.
for xml in nxml.edit_file("data/entities/animals/longleg.xml") do
	local remove_list = {}
	for child in xml:each_child() do
		remove_list[#remove_list+1] = child
	end
	for i = 1, #xml.children do
		xml:remove_child_at(i)
	end

	xml:add_child(nxml.new_element("LifetimeComponent", {
		lifetime = 1
	}))
end

--disable saving
ModMagicNumbersFileAdd("mods/noita.fairmod/files/dream/magic_numbers_override.xml")

--remove sampo from gtc.
modifile("data/scripts/items/chest_random_super.lua", [[data/entities/animals/boss_centipede/sampo.xml]], [[]])

--make sampo not pick up.
modifile("data/entities/animals/boss_centipede/sampo.xml", [[data/entities/animals/boss_centipede/sampo_pickup.lua]], [[mods/noita.fairmod/files/dream/kill_fake_sampo.lua]])

local px,py = 0,0
function OnPlayerSpawned(player)
	do return end
	if GameHasFlagRun("fairmod_lovely_dream_player_spawn_flag") then return end
	GameAddFlagRun("fairmod_lovely_dream_player_spawn_flag")

	if true then EntitySetTransform(player, px, py) end
end
px,py = 2779,13207 --final boss arena

function OnPlayerSpawned(player)
end


local hm_y_levels = {
	1419,
	2955,
	5003,
	6539,
	8587,
	10635,
	13176,
}


for xml in nxml.edit_file("data/entities/animals/boss_centipede/boss_centipede.xml") do
	local dmc = xml:first_of("DamageModelComponent")
	if not dmc then return end
	dmc.attr.wait_for_kill_flag_on_death = "0"
	dmc.attr.ragdoll_material = "air"

	for luacomp in xml:each_of("LuaComponent") do
		luacomp.attr.script_death = nil
	end

	xml:add_child(nxml.new_element("LuaComponent", {
		script_source_file = "mods/noita.fairmod/files/dream/ending/append_kolmi.lua"
	}))
end


function OnMagicNumbersAndWorldSeedInitialized()
	SetRandomSeed(3465, -581)

	local rnd = Random(1, #hm_y_levels)
	local hm_desk_y = hm_y_levels[rnd]
	local hm_desk_x = hm_desk_y == 13176 and 1880 or -680 --if its the last entry in the list, then its the final holy mountain and the X is different too
	table.remove(hm_y_levels, rnd)

	rnd = Random(1, #hm_y_levels)
	local hm_phone_y = hm_y_levels[rnd] - 15 --subtract 15 for height diff
	local hm_phone_x = hm_phone_y == 13176 and 1822 or -738



	local load_entities = {
		{ --information_kiosk
			path = "mods/noita.fairmod/files/dream/kiosk/empty_kiosk.xml",
			probability = .2, --20% spawn
			x = 237,
			y = -74
		},
		{ --mask_box
			path = "mods/noita.fairmod/files/dream/mask_box/abandoned_mask_box.xml",
			probability = .2, --20% spawn
			x = 771,
			y = -88
		},
		{ --entrance_cart
			path = "data/entities/props/physics/minecart.xml",
			probability = .9, --90% spawn
			x = 1000,
			y = 114
		},
		{
			path = "data/entities/props/physics/minecart.xml",
			probability = .9, --90% spawn
			x = 1088,
			y = 113
		},
		{
			path = "data/entities/props/physics/minecart.xml",
			probability = .9, --90% spawn
			x = 837,
			y = -88
		},
		{ --loan_shark
			path = hm_desk_y and "mods/noita.fairmod/files/dream/empty_desk/empty_desk.xml",
			probability = .1, --60% spawn
			x = hm_desk_x,
			y = hm_desk_y
		},
		{ --payphone
			path = hm_phone_y and "mods/noita.fairmod/files/dream/haunted_phone/haunted_phone.xml",
			probability = .9, --40% spawn
			x = hm_phone_x,
			y = hm_phone_y
		},
		{
			path = "mods/noita.fairmod/files/dream/ending/information_hamis.xml",
			probability = 2, --guaranteed spawn
			x = 3572,
			y = 13110
		},
	}

	for xml in nxml.edit_file("data/biome/_pixel_scenes.xml") do

		local buffered_pixel_scenes = xml:nth_of("mBufferedPixelScenes", 1)
		if buffered_pixel_scenes then
			local entities = {}
			for _,entity in ipairs(load_entities) do
				if entity.path and Random() < (entity.probability or -1) then
					--print("Adding scene: " .. entity.path)
					entities[#entities+1] = nxml.new_element("PixelScene", {
						just_load_an_entity = entity.path,
						pos_x = entity.x,
						pos_y = entity.y,
					})
				end
			end
			buffered_pixel_scenes:add_children(entities)
		end
	end
end

dofile_once("mods/noita.fairmod/files/content/credits/init.lua")
ModTextFileSetContent("data/credits.txt", ModTextFileGetContent("data/credits.txt"):sub(1, 2000) .. "\n \nCredits cut short for performance reasons lmao.\nYou're welcome, -UserK")
--Shorten the credits to avoid lag

modifile("data/translations/common.csv", [[menugameover_gamecompleted,COMPLETED THE GAME!,]], [[menugameover_gamecompleted,BEAT THE DREAM ENDING!,]])


error() --make it seem like the mod broke.