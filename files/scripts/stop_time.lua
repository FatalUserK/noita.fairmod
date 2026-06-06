local entity_id = GetUpdatedEntityID()
local varcomp = EntityGetFirstComponent(entity_id, "VariableStorageComponent")
local lifetime
if varcomp and not ((tonumber(ComponentGetValue2(varcomp, "value_string")) or 0) > GameGetFrameNum()) then
	lifetime = ComponentGetValue2(varcomp, "value_int")
else
	return
end

while lifetime == -1 do end --hard lock game if -1

local end_time = GameGetRealWorldTimeSinceStarted() + (lifetime/60)
while end_time > GameGetRealWorldTimeSinceStarted() do end
GameSetPostFxParameter("grayscale", 0, 0, 0, 0)
EntityKill(entity_id)