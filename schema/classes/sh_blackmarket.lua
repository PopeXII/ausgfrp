CLASS.name = "Black Market Dealer"
CLASS.faction = FACTION_CITIZEN
CLASS.business = {
	-- Ammunition
	["357ammo"] = 1,	
	["pistolammo"] = 1,	
	["shotgunammo"] = 1,	
	["smg1ammo"] = 1,	
	["ar2ammo"] = 1,	

	-- Illegal
	["mlgbot"] = 1,	
	["weed"] = 1,	
	["steroid"] = 1,	
	["moneyprinter"] = 1,
	["lockpick"] = 1,

	-- Medical Supplies
	["aidkit"] = 1,	
	["healthkit"] = 1,	
	["healvial"] = 1,	

	-- Communication
	["radio"] = 1,	
	["pager"] = 1,	
	["sradio"] = 1,	

	-- Grenades
	["teargas"] = 1,	
	["flare_g"] = 1,	
	["flare_b"] = 1,	
	["flare"] = 1,	
	["doorcharge"] = 1,	

	-- Outfit
	["gasmask"] = 1,
	["pot"] = 1,
	["skullmask"] = 1,

	-- Misc
	["note"] = 1,
	["spraycan"] = 1,

	-- Firearms
	["ak47"] = 1,
	["deagle"] = 1,
	["famas"] = 1,
	["galil"] = 1,
	["glock"] = 1,
	["mac10"] = 1,
	["p228"] = 1,
	["p90"] = 1,
	["sg552"] = 1,
	["tmp"] = 1,
}

function CLASS:OnSet(client)
end

CLASS_BLACKDEALER = CLASS.index