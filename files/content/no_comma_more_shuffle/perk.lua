perk_list[#perk_list+1] = {
    id = "NO_COMMA_MORE_SHUFFLE",
    ui_name = "$perk_no_comma_more_shuffle",
    ui_description = "$perkdesc_no_comma_more_shuffle",
    ui_icon = "mods/noita.fairmod/files/content/no_comma_more_shuffle/ui_gfx.png",
    perk_icon = "mods/noita.fairmod/files/content/no_comma_more_shuffle/perk_icon.png",
    stackable = false,
    func = function(entity_perk_item, entity_who_picked, item_name)
        GlobalsSetValue("PERK_NO_COMMA_MORE_SHUFFLE_WANDS", "1")

        for _, wand in ipairs(EntityGetWithTag("wand")) do
            local ability_comp = EntityGetFirstComponentIncludingDisabled(wand, "AbilityComponent")
            if ability_comp ~= nil then
                ComponentObjectSetValue2(ability_comp, "gun_config", "shuffle_deck_when_empty", true)
            end
        end
    end,
    func_remove = function(entity_perk_item, entity_who_picked, item_name)
        GlobalsSetValue("PERK_NO_COMMA_MORE_SHUFFLE_WANDS", "0")
    end,
}
