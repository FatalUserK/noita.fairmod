dofile_once("mods/noita.fairmod/files/scripts/utils/utilities.lua")

local timestop = {
	id = "FAIRMOD_TIMESTOP",
	name = "Stop",
	description = "Stops time for 1 second.",
	sprite = "mods/noita.fairmod/files/content/better_spells/timestop/icon.png",
	sprite_unidentified = "data/ui_gfx/gun_actions/disc_bullet_unidentified.png",
	type = ACTION_TYPE_OTHER,
	pandorium_ignore = true,
	spawn_level = "0,5,10",
	spawn_probability = "0.05,.9,.7",
	price = 5000,
	mana = 59,
	action = function()
		c.fire_rate_wait = c.fire_rate_wait + 60
		current_reload_time = current_reload_time + 60
		local lifetime = c.lifetime_add + 60

		if reflecting then return end

		local caster = GetUpdatedEntityID()
		if lifetime >= -1 and (EntityHasTag(caster, "player_unit") or EntityHasTag(caster, "polymorphed_player")) then
			pause(lifetime)
		elseif lifetime == -1 and not EntityHasTag(caster, "time_immunity") then
			local disable_components = {
				AIAttackComponent = true,
				AIComponent = true,
				AdvancedFishAIComponent = true,
				AnimalAIComponent = true,
				ControllerGoombaAIComponent = true,
				ControlsComponent = true,
				CrawlerAnimalComponent = true,
				FishAIComponent = true,
				ItemPickUpperComponent = true,
				PathFindingComponent = true,
				PhysicsAIComponent = true,
				WormAIComponent = true,
			}
			local override_components = {}
			for _,component in ipairs(EntityGetAllComponents(caster)) do
				local typename = ComponentGetTypeName(component)
				if disable_components[typename] then
					EntityRemoveComponent(caster, component)
				elseif override_components[typename] then
					for key, value in pairs(override_components[typename]) do
						ComponentSetValue2(component, key, value)
					end
				end
			end
			GameDropAllItems(caster)
		end

		StartReload(current_reload_time)
	end,
}

actions[#actions + 1] = timestop