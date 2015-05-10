--Jail System
--Handles all jail related thingy majigy
local PLAYER = FindMetaTable("Player")

local jail = {
	walkSpeed = 50,
	confiscatedItems = {

	},
}

function PLAYER:arrest(  )
	local suspect = self:getChar()

	self:SetWalkSpeed(jail.walkSpeed)
	self:StripWeapons()

	for _, items in pairs(suspect:getInv():getItems()) do
		suspect:getInv():remove(items.id)
	end

end