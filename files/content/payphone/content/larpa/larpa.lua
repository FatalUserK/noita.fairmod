dofile_once("data/scripts/lib/utilities.lua")

local module = {}

-- processing limits
local max_projectiles = 100  -- maximum number of projectiles to modify
local search_radius   = 300   -- search radius

function module.update(player_entity)

	if(not GameHasFlagRun("payphone_larpa"))then
		return
	end

    local player_units = EntityGetWithTag("player_unit")
    if not player_units or #player_units == 0 then
        return
    end

    local pos_x, pos_y = EntityGetTransform(player_units[1])
    if not pos_x or not pos_y then
        return
    end

    local nearby_projectiles = EntityGetInRadiusWithTag(pos_x, pos_y, search_radius, "projectile")
    local count_modified = 0

    for _, proj in ipairs(nearby_projectiles) do
        if count_modified >= max_projectiles then
            break
        end

        if EntityHasTag(proj, "projectile_cloned")
           or EntityHasTag(proj, "projectile_larpa_added")
           or EntityHasTag(proj, "boss_alchemist") then
            goto continue
        end

        EntityAddTag(proj, "projectile_larpa_added")

        -- orbit modifications
        EntityAddComponent2(proj, "VariableStorageComponent", {
            _tags = "orbit_projectile_type",
            name = "orbit_projectile_type",
            value_string = "orbit_larpa"
        })
        EntityAddComponent2(proj, "VariableStorageComponent", {
            _tags = "orbit_projectile_speed",
            name = "orbit_projectile_speed",
            value_float = 0
        })
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/orbit_projectile.lua",
            execute_every_n_frame = 1,
            remove_after_executed = true
        })
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/orbit_projectile_rotation.lua",
            execute_every_n_frame = 1
        })

        -- explosion modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/larpa_death.lua",
            execute_every_n_frame = -1,
            execute_on_removed = true
        })

        -- bounce modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/bounce_larpa.lua",
            execute_every_n_frame = 1,
            remove_after_executed = true
        })
        local proj_components = EntityGetComponent(proj, "ProjectileComponent") or {}
        for _, comp in ipairs(proj_components) do
            ComponentSetValue2(comp, "bounce_always", true)
            ComponentSetValue2(comp, "bounces_left", 1)
        end

        -- trail modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/larpa_chaos_2.lua",
            execute_every_n_frame = 5
        })
        EntityAddComponent2(proj, "LifetimeComponent", {
            lifetime = 200
        }) --this is the lowest lifetime added by this script, thus it is the primary one used

        -- chaos modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/larpa_chaos.lua",
            execute_every_n_frame = 10
        })
        --EntityAddComponent2(proj, "LifetimeComponent", {
        --    lifetime = 300
        --}) commented to avoid redundancy

        -- upwards modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/larpa_upwards.lua",
            execute_every_n_frame = 10
        })
        --EntityAddComponent2(proj, "LifetimeComponent", {
        --    lifetime = 300
        --}) commented to avoid redundancy

        -- downwards modification
        EntityAddComponent2(proj, "LuaComponent", {
            script_source_file = "data/scripts/projectiles/larpa_downwards.lua",
            execute_every_n_frame = 10
        })
        --EntityAddComponent2(proj, "LifetimeComponent", {
        --    lifetime = 300
        --}) commented to avoid redundancy

        count_modified = count_modified + 1

        ::continue::
    end
end

return module
