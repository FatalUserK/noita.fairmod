dofile_once("mods/noita.fairmod/files/scripts/utils/utilities.lua")


local MENU_OPEN_MAX_FRAMES = 40


local content = {}

local player
content.OnPlayerSpawned = function(p)
	player = p
end


local gui = GuiCreate()

local max_id = 5
local function id()
	max_id = max_id + 1
	return max_id
end

local strategem_menu_open_frames = 0
local restrict_movement = false
content.OnWorldPostUpdate = function()
	local menu_bind_1 = tonumber(ModSettingGet("fairmod.rebind_strategem_menu_1")) or 224
	local menu_bind_2 = tonumber(ModSettingGet("fairmod.rebind_strategem_menu_2")) or 228

	if InputIsKeyDown(menu_bind_1) ~= restrict_movement then
		restrict_movement = InputIsKeyDown(menu_bind_1)
		SetControlsEnabled(not restrict_movement)
	end

	local open_menu = restrict_movement or InputIsKeyDown(menu_bind_2)
	if not open_menu then
		if strategem_menu_open_frames < 1 then
			return
		else
			strategem_menu_open_frames = strategem_menu_open_frames - 1
		end
	else
		if strategem_menu_open_frames < MENU_OPEN_MAX_FRAMES then
			strategem_menu_open_frames = strategem_menu_open_frames + 1
		end
	end

	GuiStartFrame(gui)
	GuiImage(evil_gui, id(), 0, 0, "mods/noita.fairmod/files/content/misc/evil_mode.png", 1, 0.12, 0.12, 0)
	GuiImage(gui, id(), 100, 100, "mods/noita.fairmod/files/content/strategems/ui_gfx/menu.png", 1)
end

return content