local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform(entity_id)

local function fuckingkillmyself()
    GameCreateParticle("poison", x, y-6, 30, 0, 0, false)
end

local name = EntityGetName(entity_id)
--If I'm X, then they must be Y, otherwise they're X
local lover_name = name == "romeo" and "juliet" or "romeo"

local lover = EntityGetWithName(lover_name)
--If lover no longer exists in this world
if lover == 0 then fuckingkillmyself() return end

local lx,ly = EntityGetTransform(lover)

--If there is something obstructing vision
if RaytracePlatforms(x, y, lx, ly) then fuckingkillmyself() return end
--If lover is >400px away
if (x-lx)^2 + (y+ly)^2 > 400^2 then fuckingkillmyself() return end