ModLuaFileAppend(
    "data/scripts/perks/perk_list.lua",
    "mods/noita.fairmod/files/content/no_comma_more_shuffle/perk.lua"
)

local force_unshuffle_pattern = "%sif%( force_unshuffle"
local force_shuffle_code =
	[[if GlobalsGetValue("PERK_NO_COMMA_MORE_SHUFFLE_WANDS") == "1" then
		gun["shuffle_deck_when_empty"] = 1
	else]] -- This else is glued to the original if to make an 'elseif'

local gun_gen_files = {
    "data/scripts/gun/procedural/gun_procedural.lua",
    "data/scripts/gun/procedural/gun_procedural_better.lua",
}

for _, gun_gen_file in ipairs(gun_gen_files) do
    local content = ModTextFileGetContent(gun_gen_file)
    local pattern_pos = content:find(force_unshuffle_pattern)
    if pattern_pos then
        local if_pos = pattern_pos + 1  -- Skip %s of pattern
        content = string.sub(content, 1, if_pos - 1) .. force_shuffle_code .. string.sub(content, if_pos)
        ModTextFileSetContent(gun_gen_file, content)
    end
end

