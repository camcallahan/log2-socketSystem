-- This file has been generated by Dungeon Editor 2.1.18

-- import standard assets
import "assets/scripts/standard_assets.lua"

-- import custom assets
--import "mod_assets/scripts/items.lua"
import "mod_assets/scripts/monsters.lua"
import "mod_assets/scripts/objects.lua"
import "mod_assets/scripts/tiles.lua"
import "mod_assets/scripts/recipes.lua"
import "mod_assets/scripts/spells.lua"
import "mod_assets/scripts/materials.lua"
import "mod_assets/scripts/sounds.lua"

-- Cameron Callahan's SocketSystem Base Items
import "mod_assets/scripts/socketSystem/socketBaseItems.lua"
--[[ LordYig's Gem Collection for LOG1 (definitions for GEMS converted by Cameron for LOG2)
Alcoves in this pack have not been converted for use. Download LordYig's 
original LOG1 asset pack here: http://www.nexusmods.com/grimrock/mods/177/
--]]
import "mod_assets/scripts/socketSystem/alcoves_and_gems_collection.lua"
-- Cameron Callahan's SocketSystem Gem Sets
import "mod_assets/scripts/socketSystem/socketElementGems.lua"
import "mod_assets/scripts/socketSystem/socketAbilityGems.lua"
import "mod_assets/scripts/socketSystem/socketPassiveGems.lua"
import "mod_assets/scripts/socketSystem/socketSkullGems.lua"

defineObject{
   name = "party",
   baseObject = "party",
   components = {
      {
        class = "Party",  
		onPickUpItem = function(self, item)
		-- General Triggers Below (Skill/Trait triggers, etc)
			local theGameEffect = item.go.item:getGameEffect()
			local beforeGE = ""
			if theGameEffect ~= nil then beforeGE = "\n" end
			if theGameEffect == nil then theGameEffect = "" end
			beforeGE = theGameEffect .. beforeGE
			if item.go.item:hasTrait("shield") and not item.go:getComponent("sockets") then
				local shieldSockets = math.random(1, 2)
				item.go:createComponent("Counter", "sockets")
				item.go.sockets:setValue(shieldSockets)
				item.go:createComponent("Counter", "gemcount")
				item.go.gemcount:setValue(shieldSockets)
				item.go.item:setGameEffect(beforeGE.."- Free Sockets ("..tostring(item.go.gemcount:getValue()).."/"..tostring(item.go.sockets:getValue())..").")
			elseif item.go.item:hasTrait("chest_armor") and not item.go:getComponent("sockets") then
				local chestSockets = math.random(2, 4)
				item.go:createComponent("Counter", "sockets")
				item.go.sockets:setValue(chestSockets)
				item.go:createComponent("Counter", "gemcount")
				item.go.gemcount:setValue(chestSockets)
				item.go.item:setGameEffect(beforeGE.."- Free Sockets ("..tostring(item.go.gemcount:getValue()).."/"..tostring(item.go.sockets:getValue())..").") 
			elseif (item.go:getComponent("meleeattack") or item.go:getComponent("rangedattack") or item.go:getComponent("firearmattack")) and not item.go:getComponent("sockets") then
				if item.go.item:hasTrait("two_handed") then
					local weaponSockets = math.random(2, 4)
					item.go:createComponent("Counter", "sockets")
					item.go.sockets:setValue(weaponSockets)
					item.go:createComponent("Counter", "gemcount")
					item.go.gemcount:setValue(weaponSockets)
					item.go.item:setGameEffect(beforeGE.."- Free Sockets ("..tostring(item.go.gemcount:getValue()).."/"..tostring(item.go.sockets:getValue())..").")
				else
					local weaponSockets = math.random(1, 2)
					item.go:createComponent("Counter", "sockets")
					item.go.sockets:setValue(weaponSockets)
					item.go:createComponent("Counter", "gemcount")
					item.go.gemcount:setValue(weaponSockets)
					item.go.item:setGameEffect(beforeGE.."- Free Sockets ("..tostring(item.go.gemcount:getValue()).."/"..tostring(item.go.sockets:getValue())..").")
				end
			end
			return
		end,
		},
   },
}

