dofile_once("mods/noita.fairmod/files/scripts/utils/utilities.lua")
local entity_id = GetUpdatedEntityID()
local player = EntityGetParent(entity_id)

local menu_bind_1 = tonumber(ModSettingGet("fairmod.rebind_strategem_menu_1")) or 224
local menu_bind_2 = tonumber(ModSettingGet("fairmod.rebind_strategem_menu_2")) or 228

local menu_varcomp
for _,varcomp in ipairs(EntityGetComponent(entity_id, "VariableStorageComponent") or {}) do
	if ComponentGetValue2(varcomp, "name") == "strategem_menu_data" then
		menu_varcomp = varcomp
	end
end

if not menu_varcomp then return end

local strategem_menu_open_frames = ComponentGetValue2(menu_varcomp, "value_int")

---@diagnostic disable-next-line: param-type-mismatch
local restrict_movement = InputIsKeyDown(menu_bind_1)
---@diagnostic disable-next-line: param-type-mismatch
local open_menu = restrict_movement or InputIsKeyDown(menu_bind_2)
--if restrict_movement then print("WAAAAAAAAAA") end

if restrict_movement ~= ComponentGetValue2(menu_varcomp, "value_bool") then
	SetControlsEnabled(not restrict_movement)
	ComponentSetValue2(menu_varcomp, "value_bool", restrict_movement)
end