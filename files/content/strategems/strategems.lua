local strategems = {
	{
		name = "MASS DISSOLVENT",
		nonstandard = false,
		function(entity, thrower, cursor)
			EntityLoad("data/entities/projectiles/deck/circle_acid.xml", entity.x, entity.y)
		end
	}
}