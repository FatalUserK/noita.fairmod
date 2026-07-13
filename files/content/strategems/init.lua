local content = {}

content.OnPlayerSpawned = function(player)
	EntityAddChild(player, EntityLoad("mods/noita.fairmod/files/content/strategems/controller.xml"))
	EntityAddComponent2(player, "LuaComponent", {
		script_source_file = "mods/noita.fairmod/files/content/strategems/controller.lua"
	})
end


return content