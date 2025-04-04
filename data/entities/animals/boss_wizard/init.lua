dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )

for i=1,24 do
	local eid

	print( "orb " .. tostring(i) )
	
	if ( i == 1 or Random(0, 100) > 50 ) then
		eid = EntityLoad( "data/entities/animals/boss_wizard/wizard_orb_blood.xml", x, y )
	else
		eid = EntityLoad( "data/entities/animals/boss_wizard/wizard_orb_death.xml", x, y )
	end
	
	if ( eid ~= nil ) then
		EntityAddChild( entity_id, eid )
		
		local comp = EntityGetFirstComponent( eid, "VariableStorageComponent", "wizard_orb_id" )
		if ( comp ~= nil ) then
			ComponentSetValue2( comp, "value_int", i-1 )
		end
	end
end