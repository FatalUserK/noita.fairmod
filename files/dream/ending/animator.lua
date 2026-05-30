local entity_id = GetUpdatedEntityID()
local pec = EntityGetFirstComponent(entity_id, "ParticleEmitterComponent")
local ltc = EntityGetFirstComponent(entity_id, "LifetimeComponent")
local alc = EntityGetFirstComponent(entity_id, "AudioLoopComponent")
if not (pec and ltc and alc) then return end

local curr_frame = GameGetFrameNum()
ComponentSetValue2(pec, "m_next_emit_frame", curr_frame+1)

local max_lifetime = 480
local lifetime = (ComponentGetValue2(ltc, "creation_frame") - curr_frame + max_lifetime)/max_lifetime
if lifetime == 0 then EntityKill(entity_id) return end
GameScreenshake(30*lifetime - 10)

ComponentSetValue2(alc, "m_volume", 100*lifetime)
ComponentSetValue2(alc, "m_intensity", 10*lifetime)