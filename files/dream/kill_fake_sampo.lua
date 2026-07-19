function item_pickup()
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform(entity_id)
	--local sampo_effect = EntityLoad("mods/noita.fairmod/files/dream/fake_sampo.xml", x, y)
	--EntityInflictDamage(sampo_effect, 1000, "NONE", "", "DISINTEGRATED", 0, 0)
	GamePlaySound("animals", "animals/illusion/destroy", x, y)
	EntityKill(entity_id)
end