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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.secondaryaction:setSpell("mug_attack")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Mug")
				itemToEnchant.go.secondaryaction:setGameEffect("Shake down the enemy to see what they're hiding.")
				itemToEnchant.go.secondaryaction:setEnergyCost(35)
				itemToEnchant.go.secondaryaction:setCooldown(5)
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Fireball")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("fireball")
				itemToEnchant.go.secondaryaction:setEnergyCost(25)
				itemToEnchant.go.secondaryaction:setPower(5)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Ligtning Bolt")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("lightning_bolt")
				itemToEnchant.go.secondaryaction:setEnergyCost(25)
				itemToEnchant.go.secondaryaction:setPower(5)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Frost Bolt")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("frostbolt")
				itemToEnchant.go.secondaryaction:setEnergyCost(25)
				itemToEnchant.go.secondaryaction:setPower(5)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Fire Shield")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("fire_shield")
				itemToEnchant.go.secondaryaction:setEnergyCost(35)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Frost Shield")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("frost_shield")
				itemToEnchant.go.secondaryaction:setEnergyCost(35)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Shock Shield")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("shock_shield")
				itemToEnchant.go.secondaryaction:setEnergyCost(35)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
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
				itemToEnchant.go:createComponent("CastSpell", "secondaryaction")
				itemToEnchant.go.item:setSecondaryAction("secondaryaction")
				itemToEnchant.go.secondaryaction:setUiName("Shock Shield")
				itemToEnchant.go.secondaryaction:setCooldown(5)
				itemToEnchant.go.secondaryaction:setSpell("shock_shield")
				itemToEnchant.go.secondaryaction:setEnergyCost(35)
				itemToEnchant.go.secondaryaction:setCharges(5)
				itemToEnchant.go.secondaryaction:setRequirements({"concentration", 1})
				return true, "Shock Shield ability added."
			end
			return false, "No effect."
		end]]
		},
	}
}

defineObject{ name = "socket_skull_charges",
	baseObject = "base_socket_gem",
	tags = { "socketSystem", "skull_gem", "item", },
	components = {
		{
			model = "assets/models/items/skull.fbx",
			name = "model",
			class = "Model"
		},
		{
			weight = 0.2,
			uiName = "Skull of Magic",
			gfxIndex = 31,
			class = "Item",
			name = "item",
			gameEffect = [[This gem enchants items.
			- Refills and adds a charge to an items secondary action.]],
		},
		{
		class = "Counter",
		name = "treasureclass",
		value = 6
		},
		{
		class = "Script",
		name = "triggers",
		source = [[function insertGem(itemToEnchant)
			if itemToEnchant.go:getComponent("secondaryaction") then
				local currentCharges = itemToEnchant.go.secondaryaction:getCharges()
				print("Charges:", currentCharges)
				itemToEnchant.go.secondaryaction:recharge()
				local newCharges = itemToEnchant.go.secondaryaction:getCharges()
				print("newCharges:", newCharges)
				
				return true, "Altered damage statistics."
			end
		end]]
		},
	}
}