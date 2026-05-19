local nxml = dofile_once("mods/noita.fairmod/files/lib/nxml.lua")---@type nxml





for xml in nxml.edit_file("data/biome/_pixel_scenes.xml") do

	local buffered_pixel_scenes = xml:nth_of("mBufferedPixelScenes", 1)
	if buffered_pixel_scenes then
		buffered_pixel_scenes:add_child(nxml.new_element("PixelScene", {
			just_load_an_entity = "mods/noita.fairmod/files/content/cheat_disks/cabinet.xml",
			pos_x = x,
			pos_y = y,
		}))
	end
end