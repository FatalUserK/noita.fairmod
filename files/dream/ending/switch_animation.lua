local entity_id = GetUpdatedEntityID()
local old_pec = EntityGetFirstComponent(entity_id, "ParticleEmitterComponent")
if old_pec then EntityRemoveComponent(entity_id, old_pec) end

local x,y = EntityGetTransform(entity_id)
local player = EntityGetInRadiusWithTag(x, y, math.huge, "player_unit")[1]
local bank = "data/audio/Desktop/misc.bank"
local event = "player_projectiles/wall/create"
if player then
	x,y = EntityGetTransform(player)
	GamePlaySound(bank, event, x, y)
	EntityInflictDamage(player, math.huge, "NONE", "Congratulations on beating the Dream Ending!", "PLAYER_RAGDOLL_CAMERA", -10, -30, nil, nil, nil, 100)
else
	x,y = GameGetCameraPos()
	GamePlaySound(bank, event, x, y)
end

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