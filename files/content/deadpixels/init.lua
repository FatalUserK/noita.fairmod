local content = {}
local image_path = "mods/noita.fairmod/files/content/deadpixels/image.png"

local gui = GuiCreate()
local screen = {GuiGetScreenDimensions(gui)}
local img,iw,ih = ModImageMakeEditable(image_path, screen[1], screen[2])


if ModSettingGet("fairmod.placing_dead_pixels") == true then --prevent permanent softlocks
    ModSettingSet("fairmod.add_dead_pixel", 0)
    ModSettingSet("fairmod.placing_dead_pixels", false)
end




local function add_pixels(pixels_to_add)
    local sw, sh = GuiGetScreenDimensions(gui)
    local w,h = math.min(iw, sw), math.min(ih, sh)

    for i = 1, pixels_to_add do
        local frame = GameGetFrameNum()
        SetRandomSeed(w + i, h - frame)

        local x,y
        ModSettingSet("fairmod.placing_dead_pixels", true)
        for _ = 1, 1000, 1 do
            x,y = Random(1, w),Random(1,h)
            if ModImageGetPixel(img, x, y) == 0 then
                ModImageSetPixel(img, x, y, 0xFF000000)
                break
            end
            print("retrying...")
        end
        ModSettingSet("fairmod.add_dead_pixel", 0)
        ModSettingSet("fairmod.placing_dead_pixels", false)
    end
end


local function check_pixels()
    local pixels_to_add = ModSettingGet("fairmod.add_dead_pixel")
    if pixels_to_add and pixels_to_add ~= 0 then
        print("adding [" .. tostring(pixels_to_add) .. "] pixels")
        add_pixels(tonumber(pixels_to_add))
        print("pixels added")
        ModSettingSet("fairmod.add_dead_pixel", 0)
    end
end

local function render()
    local id = 2
    local function create_id()
        id = id + 1
        return id
    end

    GuiStartFrame(gui)
    GuiImage(gui, create_id(), 0, 0, image_path, 1, 1, 1)
end


content.OnPlayerSpawned = function(player)
    --EntityAddChild(player, EntityLoad("mods/noita.fairmod/files/content/deadpixels/pixel_handler.xml"))
end

content.update = function()
    check_pixels()
    render()
end


return content