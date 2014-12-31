-- This file has been generated by Dungeon Editor 2.1.9

--[[ ABILITY GEMS
These are gems that modify weapons by adding secondary abilities,
such as powerful attacks, spells, and other special powers. When
a gem is used, it will OVERWRITE any secondary ability already
available to the item.
--]]

defineObject{ name = "socket_gem_mug",
	baseObject = "itm_gem_yellow_01",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 98,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the secondary action "Mug" to a dagger.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("dagger") then
				itemToEnchant.go:createComponent("CastSpell", "mugattack")
				itemToEnchant.go.mugattack:setSpell("mug_attack")
				itemToEnchant.go.item:setSecondaryAction("mugattack")
				itemToEnchant.go.mugattack:setGameEffect("Shake down the enemy to see what they're hiding.")
				itemToEnchant.go.mugattack:setEnergy(35)
				itemToEnchant.go.mugattack:setCooldown(5)
				return true, "Mug ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_fireball",
	baseObject = "itm_gem_yellow_01",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 98,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Fireball spell to a weapon.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack")then
				itemToEnchant.go:createComponent("CastSpell", "fireballspell")
				itemToEnchant.go.item:setSecondaryAction("fireballspell")
				itemToEnchant.go.fireballspell:setUiName("Fireball")
				itemToEnchant.go.fireballspell:setCooldown(5)
				itemToEnchant.go.fireballspell:setSpell("fireball")
				itemToEnchant.go.fireballspell:setEnergyCost(25)
				itemToEnchant.go.fireballspell:setPower(5)
				itemToEnchant.go.fireballspell:setCharges(5)
				itemToEnchant.go.fireballspell:setRequirements({"concentration", 1})
				return true, "Fireball ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_lightningbolt",
	baseObject = "itm_gem_yellow_01",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 98,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Lightning Bolt spell to a weapon.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack")then
				itemToEnchant.go:createComponent("CastSpell", "lightningboltspell")
				itemToEnchant.go.item:setSecondaryAction("lightningboltspell")
				itemToEnchant.go.lightningboltspell:setUiName("Ligtning Bolt")
				itemToEnchant.go.lightningboltspell:setCooldown(5)
				itemToEnchant.go.lightningboltspell:setSpell("lightning_bolt")
				itemToEnchant.go.lightningboltspell:setEnergyCost(25)
				itemToEnchant.go.lightningboltspell:setPower(5)
				itemToEnchant.go.lightningboltspell:setCharges(5)
				itemToEnchant.go.lightningboltspell:setRequirements({"concentration", 1})
				return true, "Lightning Bolt ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_frostbolt",
	baseObject = "itm_gem_yellow_01",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_01.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 98,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Frost Bolt spell to a weapon.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("meleeattack") or itemToEnchant.go:getComponent("rangedattack") or itemToEnchant.go:getComponent("firearmattack")then
				itemToEnchant.go:createComponent("CastSpell", "frostboltspell")
				itemToEnchant.go.item:setSecondaryAction("frostboltspell")
				itemToEnchant.go.frostboltspell:setUiName("Frost Bolt")
				itemToEnchant.go.frostboltspell:setCooldown(5)
				itemToEnchant.go.frostboltspell:setSpell("frostbolt")
				itemToEnchant.go.frostboltspell:setEnergyCost(25)
				itemToEnchant.go.frostboltspell:setPower(5)
				itemToEnchant.go.frostboltspell:setCharges(5)
				itemToEnchant.go.frostboltspell:setRequirements({"concentration", 1})
				return true, "Frost Bolt ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_fireshield",
	baseObject = "itm_gem_yellow_02",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 99,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Fire Shield spell to a shield.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				itemToEnchant.go:createComponent("CastSpell", "fireshieldspell")
				itemToEnchant.go.item:setSecondaryAction("fireshieldspell")
				itemToEnchant.go.fireshieldspell:setUiName("Fire Shield")
				itemToEnchant.go.fireshieldspell:setCooldown(5)
				itemToEnchant.go.fireshieldspell:setSpell("fire_shield")
				itemToEnchant.go.fireshieldspell:setEnergyCost(35)
				itemToEnchant.go.fireshieldspell:setCharges(5)
				itemToEnchant.go.fireshieldspell:setRequirements({"concentration", 1})
				return true, "Fire Shield ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_frostshield",
	baseObject = "itm_gem_yellow_02",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 99,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Frost Shield spell to a shield.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				itemToEnchant.go:createComponent("CastSpell", "frostshieldspell")
				itemToEnchant.go.item:setSecondaryAction("frostshieldspell")
				itemToEnchant.go.fireshieldspell:setUiName("Frost Shield")
				itemToEnchant.go.fireshieldspell:setCooldown(5)
				itemToEnchant.go.fireshieldspell:setSpell("frost_shield")
				itemToEnchant.go.fireshieldspell:setEnergyCost(35)
				itemToEnchant.go.fireshieldspell:setCharges(5)
				itemToEnchant.go.fireshieldspell:setRequirements({"concentration", 1})
				return true, "Frost Shield ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_shockshield",
	baseObject = "itm_gem_yellow_02",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 99,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Shock Shield spell to a shield.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				itemToEnchant.go:createComponent("CastSpell", "shockshieldspell")
				itemToEnchant.go.item:setSecondaryAction("shockshieldspell")
				itemToEnchant.go.fireshieldspell:setUiName("Shock Shield")
				itemToEnchant.go.fireshieldspell:setCooldown(5)
				itemToEnchant.go.fireshieldspell:setSpell("shock_shield")
				itemToEnchant.go.fireshieldspell:setEnergyCost(35)
				itemToEnchant.go.fireshieldspell:setCharges(5)
				itemToEnchant.go.fireshieldspell:setRequirements({"concentration", 1})
				return true, "Shock Shield ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_gem_shockshield",
	baseObject = "itm_gem_yellow_02",
	tags = { "socketSystem", "ability_gem", "item", },
	components = {
		{
		class = "Model",
		model = "mod_assets/models/items/gems/gem_yellow_02.fbx",
		},
		{
			weight = 0.2,
			uiName = "Chipped Citrine",
			gfxAtlas = "mod_assets/textures/gui/gui_icons_gems.tga",
			gfxIndex = 99,
			class = "Item",
			name = "item",
			description = "A yellow citrine.",
			gameEffect = [[This gem enchants items.
			- Adds the Shock Shield spell to a shield.
			- Removes previous secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 2
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go.item:hasTrait("shield") then
				itemToEnchant.go:createComponent("CastSpell", "shockshieldspell")
				itemToEnchant.go.item:setSecondaryAction("shockshieldspell")
				itemToEnchant.go.fireshieldspell:setUiName("Shock Shield")
				itemToEnchant.go.fireshieldspell:setCooldown(5)
				itemToEnchant.go.fireshieldspell:setSpell("shock_shield")
				itemToEnchant.go.fireshieldspell:setEnergyCost(35)
				itemToEnchant.go.fireshieldspell:setCharges(5)
				itemToEnchant.go.fireshieldspell:setRequirements({"concentration", 1})
				return true, "Shock Shield ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}