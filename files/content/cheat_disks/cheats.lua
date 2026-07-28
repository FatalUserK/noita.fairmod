local cheats = dofile_once("mods/noita.fairmod/files/content/cheats/cheat_codes.lua")

local cd_cheats = {}
for _,cheat in ipairs(cheats) do
	if cheat.disk_data and not cheat.is_alias then
		cheat.spawn_weight = cheat.spawn_weight or 5
		cheat.func = cheat.disk_data.func or cheat.func
		cd_cheats[#cd_cheats+1] = cheat
	end
end

local cd_cheats_keyed = {}
for _,cheat in ipairs(cd_cheats) do
	cd_cheats_keyed[cheat.progress_id] = cheat
end


return cd_cheats_keyed,cd_cheats