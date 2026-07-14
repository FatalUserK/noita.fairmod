local content = {}

content.OnPlayerSpawned = function(player)
	EntityAddChild(player, EntityLoad("mods/noita.fairmod/files/content/strategems/controller.xml"))
end

return content