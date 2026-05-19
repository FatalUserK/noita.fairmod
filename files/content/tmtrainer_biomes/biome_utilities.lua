

local enemies = {
	{
		"mods/noita.fairmod/files/content/wizard_crash/enemy.xml",
		weight = 3
	},
}


function spawn_glitch_enemy(x, y, w, h)
	local enemy = "data/entities/animals/noita.fairmod_enemy_corrupted_0" .. ProceduralRandomi(x, y, 0, 9) .. ".xml"
	Random()
	for i = 1, ProceduralRandomi(x+1512, y-137, 0, 6) do
		EntityLoadCameraBound(enemy, x, y)
	end
end

local rewards = {
	{
		"mods/noita.fairmod/files/content/dingus/dingus.xml",
		weight = 7
	},
	{
		"mods/noita.fairmod/files/content/mailbox/hampill/hampill.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/milk_biome/entities/items/pickup/endless_milk_potion.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/minecraft/minecraft.xml",
		weight = 3
	},

	{
		"data/entities/items/pickup/utility_box.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/powder_stash.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/thunderstone.xml",
		weight = 2
	},
	{
		"data/entities/items/pickup/brimstone.xml",
		weight = 3
	},
	{
		"data/entities/items/pickup/stonestone.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/waterstone.xml",
		weight = .5
	},
	{
		"data/entities/items/pickup/poopstone.xml",
		weight = .5
	},
	{
		"data/entities/items/pickup/wandstone.xml",
		weight = .3
	},
	{
		"data/entities/items/pickup/random_card.xml",
		weight = 8
	},
	{
		"data/entities/items/pickup/potion_vomit.xml",
		weight = 4
	},
	{
		"data/entities/items/pickup/potion.xml",
		weight = 7
	},
	{
		"data/entities/items/pickup/potion_slime.xml",
		weight = 2
	},
	{
		"data/entities/items/pickup/potion_water.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/potion_mimic.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/potion_porridge.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/potion_beer.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/physics_gold_orb_greed.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/physics_gold_orb.xml",
		weight = 5
	},
	{
		"data/entities/items/pickup/physics_greed_die.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/physics_die.xml",
		weight = .5
	},
	{
		"data/entities/items/pickup/heart_better.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/heart.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/heart_fullhp.xml",
		weight = 5
	},
	{
		"data/entities/items/pickup/heart_fullhp_temple.xml",
		weight = 5
	},
	{
		"data/entities/items/pickup/evil_eye.xml",
		weight = 3
	},
	{
		"data/entities/items/pickup/essence_air.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/essence_alcohol.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/essence_fire.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/essence_laser.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/essence_water.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/greed_curse.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/cape.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/broken_wand.xml",
		weight = 5
	},
	{
		"data/entities/items/pickup/chest_random.xml",
		weight = 10
	},
	{
		"data/entities/items/pickup/chest_random_super.xml",
		weight = 3
	},
	{
		"data/entities/items/pickup/sun/sunseed.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/sun/sunstone.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/beamstone.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/chest_leggy.xml",
		weight = 1
	},
	{
		"data/entities/items/pickup/perk.xml",
		weight = 5
	},
	{
		"data/entities/items/pickup/spell_refresh.xml",
		weight = 4
	},
	{
		"data/entities/items/shop_cape.xml",
		weight = 2
	},
	{
		"data/entities/items/shop_item.xml",
		weight = 6
	},
	{
		"data/entities/animals/boss_centipede/sampo.xml",
		weight = 1
	},
}



local wands = { --separate table to avoid dilution
	{
		"mods/noita.fairmod/files/content/fishing/files/rod/default_rod.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/rat_wand/rat_wand.xml",
		weight = 3
	},

	{
		"data/entities/items/wands/experimental/experimental_wand_1.xml",
		weight = 1
	},
	{
		"data/entities/items/wands/experimental/experimental_wand_2.xml",
		weight = 1
	},
	{
		"data/entities/items/wands/experimental/experimental_wand_3.xml",
		weight = 1
	},
	{
		"data/entities/items/wands/experimental/experimental_wand_4.xml",
		weight = 1
	},
	{
		"data/entities/items/flute.xml",
		weight = 1
	},
	{
		"data/entities/items/kantele.xml",
		weight = 1
	},
	{
		"data/entities/items/leukaluu_kantele.xml",
		weight = 1
	},
	{
		"data/entities/items/shop_wand_level_01.xml",
		weight = 5
	},
	{
		"data/entities/items/wand_daily_01.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_daily_02.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_daily_03.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_daily_04.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_daily_05.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_daily_06.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_kiekurakeppi.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_leukaluu.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_01.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_01_better.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_01.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_02.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_02_better.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_02.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_03.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_03_better.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_03.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_04.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_04.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_04.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_05.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_05_better.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_05.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_06.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_06_better.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_unshuffle_06.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_level_10.xml",
		weight = 4.5
	},
	{
		"data/entities/items/wand_unshuffle_10.xml",
		weight = 4.5
	},
	{
		"data/entities/items/wands/wand_good/wand_good_1.xml",
		weight = 1
	},
	{
		"data/entities/items/wands/wand_good/wand_good_2.xml",
		weight = 1
	},
	{
		"data/entities/items/wands/wand_good/wand_good_3.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_petri.xml",
		weight = 3
	},
	{
		"data/entities/items/wand_ruusu.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_valtikka.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_varpuluuta.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_vasta.xml",
		weight = 1
	},
	{
		"data/entities/items/wand_vihta.xml",
		weight = 1
	},
}

local wand_weight = 10

local rewards_for_this_biome = {}

for _=1, Random(3, 14) do
	local target_table = rewards
	local rnd = Random(1, #rewards + wand_weight)
	if rewards[rnd] == nil then --if outside of range, then consider it hitting wand spawn chance and add a wand instead
		target_table = wands
		rnd = Random(1, #target_table)
	end

	rewards_for_this_biome[#rewards_for_this_biome+1] = target_table[rnd]
	--print(tostring(rewards_for_this_biome[#rewards_for_this_biome]))
	table.remove(target_table, rnd)
end

function spawn_random_reward(x, y, w, h)
	local spawn_target = ProceduralRandomFromTable(rewards_for_this_biome, x-2, y+9)[1]
	EntityLoad(spawn_target, x, y)
end


local ceiling_props = {
	{
		"mods/noita.fairmod/files/content/backrooms/props/ceiling_light.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/backrooms/props/ceiling_light_off.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/backrooms/props/ceiling_light_broken.xml",
		weight = 2
	},
	{
		"mods/noita.fairmod/files/content/backrooms/props/ceiling_light_blacklight.xml",
		weight = .5
	},
	{
		"mods/noita.fairmod/files/content/chemical_horror/potion_slowness/status_handling/physics_tubelamp_bl.xml",
		weight = 1
	},


	{
		"data/entities/props/physics/lantern_small.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_tubelamp.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_lantern_small.xml",
		weight = 10
	},
	{
		"data/entities/props/physics/temple_lantern.xml",
		weight = 10
	},
	{
		"data/entities/props/dripping_acid_gas.xml",
		weight = 3
	},
	{
		"data/entities/props/dripping_oil.xml",
		weight = 2
	},
	{
		"data/entities/props/dripping_radioactive.xml",
		weight = 2
	},
	{
		"data/entities/props/dripping_water_heavy.xml",
		weight = 4
	},
	{
		"data/entities/props/suspended_seamine.xml",
		weight = 3
	},
	{
		"data/entities/props/suspended_tank_acid.xml",
		weight = 3
	},
	{
		"data/entities/props/suspended_tank_radioactive.xml",
		weight = 4
	},
}


local ground = {
	{
		"mods/noita.fairmod/files/content/corpses/corpse_loader.xml",
		weight = 5
	},
	{
		"mods/noita.fairmod/files/content/necopumpkin/neco_pumpkin.xml",
		weight = 1
	},

	{
		"data/entities/props/physics_barrel_burning.xml",
		weight = 6
	},
	{
		"data/entities/props/physics_brewing_stand.xml",
		weight = 5
	},
	{
		"data/entities/props/vault_apparatus_01.xml",
		weight = 10
	},
	{
		"data/entities/props/vault_apparatus_02.xml",
		weight = 10
	},
}

local ground_explosives = {
	{
		"mods/noita.fairmod/files/content/chemical_horror/grease/physics_barrel_grease.xml",
		weight = 10
	},
	{
		"mods/noita.fairmod/files/content/chemical_horror/methane/physics_methane_tank.xml",
		weight = 10
	},

	{
		"data/entities/props/physics_barrel_oil.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_barrel_radioactive.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_barrel_water.xml",
		weight = 6
	},
	{
		"data/entities/props/physics_pata.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_pressure_tank.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_propane_tank.xml",
		weight = 10
	},
	{
		"data/entities/props/physics_seamine.xml",
		weight = 10
	},
}

local traps = {
	{
		"mods/noita.fairmod/files/content/bananapeel/bananapeel.xml",
		weight = 3
	},

	{
		"data/entities/props/physics_trap_ignite_enabled.xml",
		weight = 5
	},
	{
		"data/entities/props/physics_trap_ignite.xml",
		weight = 5
	},
	{
		"data/entities/props/physics/trap_ignite_enabled.xml",
		weight = 5
	},
	{
		"data/entities/props/physics/trap_ignite.xml",
		weight = 5
	},
	{ --jungle vines
		"data/entities/projectiles/gasblob.xml",
		weight = 10
	},
}

local interactive = {
	{
		"mods/noita.fairmod/files/content/backrooms/entities/radio.xml",
		weight = 8
	},
	{
		"mods/noita.fairmod/files/content/backrooms/entities/elevator.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/anti_dmca/jerma.xml",
		weight = 6
	},
	{
		"mods/noita.fairmod/files/content/entrance_cart/ghost_minecart_spawner.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/funky_portals/return_portal.xml",
		weight = 2
	},
	{
		"mods/noita.fairmod/files/content/gamblecore/slotmachine.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/information_kiosk/information_hamis.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/loan_shark/loanshark.xml",
		weight = 2
	},
	{
		"mods/noita.fairmod/files/content/mailbox/mailbox.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/mask_box/mask_box.xml",
		weight = 4
	},
	{
		"mods/noita.fairmod/files/content/payphone/payphone.xml",
		weight = 3
	},
	{
		"mods/noita.fairmod/files/content/speedrun_door/door_entrance.xml",
		weight = 1
	},

	{
		"data/entities/props/music_machines/base_music_machine.xml",
		weight = 5,
	},
	{
		"data/entities/props/music_machines/music_machine_00.xml",
		weight = 2.5,
	},
	{
		"data/entities/props/music_machines/music_machine_01.xml",
		weight = 2.5,
	},
	{
		"data/entities/props/music_machines/music_machine_02.xml",
		weight = 2.5,
	},
	{
		"data/entities/props/music_machines/music_machine_03.xml",
		weight = 2.5,
	},
	{
		"data/biome_impl/static_tile/watchtower_music_trigger.xml",
		weight = 10
	},
	{
		"data/entities/animals/boss_centipede/boss_music_buildup_trigger.xml",
		weight = 10
	},
	{
		"data/biome_impl/static_tile/watchtower_music_trigger.xml",
		weight = 10
	},
	{
		"data/entities/animals/boss_limbs/boss_limbs_trigger.xml",
		weight = 10
	},
	{
		"data/entities/buildings/controls_f_trigger.xml",
		weight = 5
	},
	{
		"data/entities/buildings/controls_i_trigger.xml",
		weight = 5
	},
	{
		"data/entities/buildings/controls_inventory_trigger.xml",
		weight = 10
	},
	{
		"data/entities/buildings/workshop_exit.xml",
		weight = 10
	},
	{
		"data/entities/misc/towercheck.xml",
		weight = 10
	},
	{
		"data/entities/buildings/chest_dark.xml",
		weight = 3
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
	{
		"",
		weight = 10
	},
}