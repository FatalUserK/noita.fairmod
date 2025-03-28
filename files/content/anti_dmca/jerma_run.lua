spawn_frame = spawn_frame or GameGetFrameNum()
dropped_mic = dropped_mic or false

local entity_id = GetUpdatedEntityID()

local x, y = EntityGetTransform(entity_id)
-- rotate 45 degrees back and forth smoothly

--[[local jerma_encounters = tonumber(GlobalsGetValue("jerma_encounters", "0"))



jerma_encounters = jerma_encounters + 1

GlobalsSetValue("jerma_encounters", tostring(jerma_encounters))]]

if(GameGetFrameNum() >= spawn_frame + 30)then
	if(GameGetFrameNum() % 5 == 0)then
		GamePlaySound("mods/noita.fairmod/fairmod.bank", "jerma/aaeeoo_local", x, y)
	end

	if(not dropped_mic)then
		local microphone = EntityLoad("mods/noita.fairmod/files/content/anti_dmca/microphone.xml", x, y - 8)
		local velocity_comp = EntityGetFirstComponentIncludingDisabled(microphone, "VelocityComponent")

		local velocity_x = Random(-100, 100)
		local velocity_y = -100

		ComponentSetValue2(velocity_comp, "mVelocity", velocity_x, velocity_y)

		dropped_mic = true
	end

	x = x - 4
	local angle = math.rad(35 * math.sin(GameGetFrameNum() * 0.9))
	EntitySetTransform(entity_id, x, y, angle)
end