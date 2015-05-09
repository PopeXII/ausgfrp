ITEM.name = "Lockpick"
ITEM.model = "models/weapons/w_crowbar.mdl"
ITEM.class = "nut_lockpick"
ITEM.width = 4
ITEM.height = 2
ITEM.desc = "Lockpick a door."
ITEM.category = "Illegal"
ITEM.price = 500


ITEM.functions._use = {
	name = "Use",
	tip = "useTip",
	icon = "icon16/bug.png",
	onRun = function(item)
		local ply = item.player
		local items = ply:getChar():getInv():getItems()
		ply:Give(item.class)
		ply:SelectWeapon(item.class)
		item:remove(item.id)
		return false
	end,
	onCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
