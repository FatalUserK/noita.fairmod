dofile_once("mods/noita.fairmod/files/scripts/utils/utilities.lua")

if ModSettingGet("noita.fairmod.streamer_mode") then
	local nxml = dofile_once("mods/noita.fairmod/files/lib/nxml.lua") --- @type nxml
	for xml in nxml.edit_file("mods/noita.fairmod/files/content/better_spells/racoon/racoon.xml") do
		local loop = xml:first_of("AudioLoopComponent")
		if loop then loop:set("event_name", "pedro/pedro_streamer") end
	end
end

ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/racoon/racoon.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/spakr_bolt/spakr_bolt.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/rubba_ball/rubba_ball.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/pouncy_orb/pouncy_orb.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/bad_bombs/bad_bombs.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/joel/joel.lua")
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/noita.fairmod/files/content/better_spells/timestop/timestop.lua")


modifile("data/scripts/projectiles/black_hole_big.lua", [[math.min(64, radius + 1)]], [[radius + 1
		local particle_attractor_force = radius * 0.25
		if radius > 64 then
			local mult = radius/64
			particle_attractor_force = particle_attractor_force * mult^2
			local sprite = EntityGetFirstComponent(entity_id, "SpriteComponent")
			if sprite then
				ComponentSetValue2(sprite, "has_special_scale", true)
				ComponentSetValue2(sprite, "special_scale_x", mult)
				ComponentSetValue2(sprite, "special_scale_y", mult)
			end
			for _,c in ipairs(EntityGetAllChildren(entity_id) or {}) do
				for _,loosegroundcomp in ipairs(EntityGetComponent(c, "LooseGroundComponent") or {}) do
					ComponentSetValue2(loosegroundcomp, "probability", .2 * mult^2)
				end
			end
		end
		vars.radius = radius
		vars.particle_attractor_force = particle_attractor_force
		do return end]]
)

modifile("data/scripts/projectiles/white_hole_big.lua", [[math.min(64, radius + 1)]], [[radius + 1
		local particle_attractor_force = radius * -0.25
		if radius > 64 then
			local mult = radius/64
			particle_attractor_force = particle_attractor_force * mult^2
			local sprite = EntityGetFirstComponent(entity_id, "SpriteComponent")
			if sprite then
				ComponentSetValue2(sprite, "has_special_scale", true)
				ComponentSetValue2(sprite, "special_scale_x", mult)
				ComponentSetValue2(sprite, "special_scale_y", mult)
			end
			for _,c in ipairs(EntityGetAllChildren(entity_id) or {}) do
				for _,loosegroundcomp in ipairs(EntityGetComponent(c, "LooseGroundComponent") or {}) do
					ComponentSetValue2(loosegroundcomp, "probability", .2 * mult^2)
				end
			end
		end
		vars.radius = radius
		vars.particle_attractor_force = particle_attractor_force
		do return end]]
)