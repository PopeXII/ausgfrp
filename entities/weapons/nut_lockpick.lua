if ( SERVER ) then
	AddCSLuaFile()
end

if ( CLIENT ) then
	SWEP.PrintName			= "Lockpick"			
	SWEP.Author				= "PopeXIII"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.BobScale = 0
	SWEP.SwayScale = 0
end

SWEP.HoldType			= "normal"
SWEP.Category			= "NutScript 1.1 Weapons"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/v_crowbar.mdl"
SWEP.WorldModel			= "models/weapons/w_crowbar.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "physics/wood/wood_box_impact_hard3.wav" )
SWEP.Primary.ClipSize = -1      
SWEP.Primary.DefaultClip = 0       
SWEP.Primary.Automatic = false      
SWEP.Primary.Ammo = ""

SWEP.Secondary.ClipSize = -1      
SWEP.Secondary.DefaultClip = -1     
SWEP.Secondary.Automatic = false        
SWEP.Secondary.Ammo = ""


function SWEP:Initialize()
	self:SetHoldType("normal")
	self:SetisLockpicking(false)
end

function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 0, "isLockpicking")
end

function SWEP:toggleUnlock(door, state) 
	if (IsValid(self.Owner) and self.Owner:GetPos():Distance(door:GetPos()) > 96) then
		return
	end

	if (door:isDoor()) then
		local partner = door:getDoorPartner()

		if (state) then
			if (IsValid(partner)) then
				partner:Fire("unlock")
			end

			door:Fire("unlock")
			self.Owner:EmitSound("doors/door_latch3.wav")
		else
			if (IsValid(partner)) then
				partner:Fire("unlock")
			end

			door:Fire("unlock")
			self.Owner:EmitSound("doors/door_latch1.wav")
		end
	elseif (door:IsVehicle()) then
		if (state) then
			door:Fire("unlock")
			self.Owner:EmitSound("doors/door_latch3.wav")
		else
			door:Fire("unlock")
			self.Owner:EmitSound("doors/door_latch1.wav")
		end
	end
end

function SWEP:PrimaryAttack()
	local time = math.random(1,10)
	local time2 = math.max(time, 1)
	local ply = self.Owner:getChar()
	self:SetisLockpicking(true)

	self:SetNextPrimaryFire(CurTime() + time2)
	self:SetNextSecondaryFire(CurTime() + time2)

	if (!IsFirstTimePredicted()) then
		return
	end

	if (CLIENT) then
		return
	end

	local data = {}
		data.start = self.Owner:GetShootPos()
		data.endpos = data.start + self.Owner:GetAimVector()*96
		data.filter = self.Owner
	local entity = util.TraceLine(data).Entity

		if (IsValid(entity) and
			(
				(entity:isDoor()) or
				(entity:IsVehicle())
			)
		) then
			self.Owner:setAction("Picklocking...", time, function()
				self:toggleUnlock(entity, true)
				self.Owner:StripWeapon("nut_lockpick")
				self:SetisLockpicking(false)
			end)			

		return
	end
end

function SWEP:Think() 
	self:EmitSound("weapons/357/357_reload")

	local trace = self:GetOwner():GetEyeTrace()

	if not IsValid(trace.Entity) or not trace.Entity:isDoor() or trace.HitPos:Distance(self:GetOwner():GetShootPos()) > 100 then
		self.Owner:StripWeapon("nut_lockpick")
	end
end