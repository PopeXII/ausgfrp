AddCSLuaFile("cl_init.lua")
DeriveGamemode("nutscript")

print("Serverside Loaded!")



--Easier way to holster
function holster(ply, key)
	local client = ply
	local cl = ply:getChar()


	if (client:KeyDown(32) and client:KeyDown(4)) then
		client:ConCommand( "say /toggleraise") 
	end
end
hook.Add("KeyPress", "Holster/unholster easily", holster)

	
