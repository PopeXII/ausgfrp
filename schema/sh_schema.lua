SCHEMA.name = "ARRPEE" -- Change this name if you're going to create new schema.
SCHEMA.author = "PopeXIII"
SCHEMA.desc = "Where the fun begins."

-- Schema Help Menu. You can add more stuffs in cl_hooks.lua.
SCHEMA.helps = {
	["Developer"] = 
	[[PopeXIII.]]
}

if (SERVER) then
	-- http://steamcommunity.com/sharedfiles/filedetails/?id=170149842
	-- NYPD Male Models
	resource.AddWorkshop(170149842)
	--Map
	resource.AddWorkshop(199758059)

	-- Adding Gasmask Resources
	resource.AddFile("sound/gasmaskon.wav")
	resource.AddFile("sound/gasmaskoff.wav")
	resource.AddFile("sound/gmsk_in.wav")
	resource.AddFile("sound/gmsk_out.wav")
	resource.AddFile("materials/gasmask_fnl.vmt")
	resource.AddFile("materials/gasmask3.vtf")
	resource.AddFile("materials/gasmask3_n.vtf")
	resource.AddFile("materials/shtr_01.vmt")
	resource.AddFile("materials/shtr.vtf")
	resource.AddFile("materials/shtr_n.vtf")

	-- Adding Schema Resources
	resource.AddFile("materials/modernrp/dankweed.png")
	resource.AddFile("materials/modernrp/hitmarker.png")
	resource.AddFile("materials/effects/fas_muzzle1.png")
	resource.AddFile("materials/effects/fas_muzzle2.png")
	resource.AddFile("materials/effects/fas_muzzle3.png")
	resource.AddFile("materials/effects/fas_muzzle4.png")
	resource.AddFile("materials/effects/fas_muzzle5.png")
	resource.AddFile("materials/effects/fas_muzzle6.png")
	resource.AddFile("materials/effects/fas_muzzle7.png")
	resource.AddFile("materials/effects/fas_muzzle8.png")
	resource.AddFile("sound/ui/bad.wav")
	resource.AddFile("sound/ui/bip.wav")
	resource.AddFile("sound/ui/boop.wav")
	resource.AddFile("sound/ui/charged.wav")
	resource.AddFile("sound/ui/confirm.wav")
	resource.AddFile("sound/ui/deny.wav")
	resource.AddFile("sound/ui/extended.wav")
	resource.AddFile("sound/ui/good.wav")
	resource.AddFile("sound/ui/notify.wav")
	resource.AddFile("sound/ui/okay.wav")
	resource.AddFile("sound/ui/welcome.wav")
	resource.AddFile("sound/policesiren.wav")
end

nut.util.include("sh_configs.lua")
nut.util.include("cl_effects.lua")
nut.util.include("sv_hooks.lua")
nut.util.include("cl_hooks.lua")
nut.util.include("sh_hooks.lua")
nut.util.include("sh_commands.lua")
nut.util.include("meta/sh_player.lua")
nut.util.include("meta/sh_entity.lua")
nut.util.include("meta/sh_character.lua")
nut.util.include("sh_dev.lua") -- Developer Functions

--nut.dialogue.loadFromDir(SCHEMA.folder .. "/schema/dialogues")