local entity_id = GetUpdatedEntityID()
local player = EntityGetParent(entity_id)

local function set_movement_enabled(value)
	local target_inputs = {
		"mButtonDownLeft",
		"mButtonDownRight",
		"mButtonDownUp",
		"mButtonDownFly",
		"mButtonDownDown",
	}

	local controls_component = EntityGetFirstComponent(player, "ControlsComponent")
	if not controls_component then return end
	ComponentSetValue2(controls_component, "enabled", value)
	for _, field in ipairs(target_inputs) do
		ComponentSetValue2(controls_component, field, false)
	end
end

local menu_varcomp
for _,varcomp in ipairs(EntityGetComponent(entity_id, "LuaComponent") or {}) do
	if ComponentGetValue2(varcomp, "name") == "strategem_menu_data" then
		menu_varcomp = varcomp
	end
end

if not menu_varcomp then return end

local strategem_menu_open = ComponentGetValue2(menu_varcomp, "value_bool")
local should_strategem_menu_be_open =