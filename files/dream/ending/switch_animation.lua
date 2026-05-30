local entity_id = GetUpdatedEntityID()
local old_pec = EntityGetFirstComponent(entity_id, "ParticleEmitterComponent")
if old_pec then EntityRemoveComponent(entity_id, old_pec) end

local x,y = EntityGetTransform(entity_id)
local player = EntityGetInRadiusWithTag(x, y, math.huge, "player_unit")[1]
if player then
	EntityInflictDamage(player, math.huge, "NONE", "Congratulations on beating the Dream Ending!", "PLAYER_RAGDOLL_CAMERA", -10, -30, nil, nil, nil, 100)
end
GameTriggerMusicFadeOutAndDequeueAll(1)
x,y = GameGetCameraPos()
GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/happy_ending/create", x, y )

local new_pec = EntityAddComponent2(entity_id, "ParticleEmitterComponent", {
	image_animation_file="mods/noita.fairmod/files/dream/ending/particle_emitter/text.png",
	image_animation_loop=false,
	emitted_material_name="spark_red",
	image_animation_speed=1,
	emit_real_particles=false,
	create_real_particles=false,
	emit_cosmetic_particles=true,
	collide_with_grid=false,
})

ComponentSetValue2(new_pec, "gravity", 0, 0)