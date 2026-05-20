function do_newgame_plus(iteration, override_data)
	-- GameDoEnding2()
	-- BiomeMapLoad("mods/nightmare/files/biome_map.lua")

	local prev_iter = tonumber(SessionNumbersGetValue("NEW_GAME_PLUS_COUNT"))

	local data = {
		prev_iter = prev_iter,
		load_map = true,
		biome_map = "data/biome_impl/biome_map_newgame_plus.lua",
		pixel_scenes = "data/biome/_pixel_scenes_newgame_plus.xml",
		pre_func = function() end,
		post_func = function() 
			LoadPixelScene("data/biome_impl/clean_entrance.png", "", 128, 1534, "", true, true)
			LoadPixelScene("data/biome_impl/clean_entrance.png", "", 128, 3070, "", true, true)
			LoadPixelScene("data/biome_impl/clean_entrance.png", "", 128, 6655, "", true, true)
			LoadPixelScene("data/biome_impl/clean_entrance.png", "", 128, 10750, "", true, true)
		end,

		scale_enemies = true,
		hp_scale = true,
		hp_scale_min = function(self) return 7 + ((self.iteration-1) * 2.5) end,
		hp_scale_max = function(self) return 25 + ((self.iteration-1) * 10) end,
		attack_cooldown_scale = true,
		enemy_attack_cooldown = function(self) return .5^self.iteration end,

		generic_increase_damage_multipliers = true,
		damage_multipliers = {
			melee = 3,
			poison = 3,
			projectile = 2,
			explosion = 2,
			electricity = 2,
			fire = 2,
			drill = 2,
			slice = 2,
			ice = 2,
			radioactive = 2,
		}
	}

	for key, value in pairs(override_data) do
		data[key] = value
	end

	data.iteration = data.iteration or iteration or data.prev_iter + 1

	if data.pre_func then
		local _data = data:pre_func()
		data = _data or data
	end

	SessionNumbersSetValue("NEW_GAME_PLUS_COUNT", data.iteration)

	-- scale the enemy difficulty
	if data.scale_enemies ~= nil then SessionNumbersSetValue("DESIGN_SCALE_ENEMIES", data.scale_enemies and "1" or "0") end

	if data.hp_scale then
		SessionNumbersSetValue("DESIGN_NEW_GAME_PLUS_HP_SCALE_MIN", data:hp_scale_min())
		SessionNumbersSetValue("DESIGN_NEW_GAME_PLUS_HP_SCALE_MAX", data:hp_scale_max())
	end

	if data.attack_cooldown_scale then SessionNumbersSetValue("DESIGN_NEW_GAME_PLUS_ATTACK_SPEED", data:enemy_attack_cooldown()) end

	local player_entity = EntityGetClosestWithTag(0, 0, "player_unit")
	local damagemodel = EntityGetFirstComponentIncludingDisabled(player_entity, "DamageModelComponent")
	if damagemodel and data.generic_increase_damage_multipliers then
		for type,mult in pairs(data.damage_multipliers) do
			ComponentObjectSetValue2(damagemodel, "damage_multipliers", type,
				ComponentObjectGetValue2(damagemodel, "damage_multipliers", type) * mult
			)
		end
	end
	-- Load the actual biome map

	if data.load_map then
		BiomeMapLoad_KeepPlayer(data.biome_map, data.pixel_scenes)
		SessionNumbersSave()
	end

	if data.do_print_iteration then
		local text = GameTextGetTranslatedOrNot("$new_game_for_newgame_plus")
		text = text .. " "
		local plusses
		iteration = tonumber(iteration)
		if iteration then
			if iteration > 0 then
				plusses = string.rep("+", iteration)
			elseif iteration < 0 then
				plusses = string.rep("+", 0 - iteration)
			else
				plusses = "0"
			end
		else
			plusses = iteration
		end

		text = text .. tostring(plusses)
		GamePrintImportant(text, "")
	end

	if data.post_func then data:post_func() end
end