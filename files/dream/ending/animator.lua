local entity_id = GetUpdatedEntityID()
local pec = EntityGetFirstComponent(entity_id, "ParticleEmitterComponent")
if not pec then return end

ComponentSetValue2(pec, "m_next_emit_frame", GameGetFrameNum()+1)