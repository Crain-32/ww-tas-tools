local core = {}

local Pointers = require"TWW_Pointers"

local function getLinkPos()
	local address = Pointers.getPositionPointer()
	return {X = ReadValueFloat(address), Y = ReadValueFloat(address + 0x4), Z = ReadValueFloat(address + 0x8)}
end
core.getLinkPos = getLinkPos

local function getPosPointer()
	local address = Pointers.getPositionPointer()
	return address
end
core.getPosPointer = getPosPointer

--local function getYRotation https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L1135

--local function getPotentialSpeed()

local function getLinkHeldItem()
	local address = Pointers.getLinkObjPointer()
	return ReadValue16(address + 3560)
end
core.getLinkHeldItem = getLinkHeldItem

local function getAccel() --Offset might not work on Japanese
	local address = Pointers.getAccelPointer()
	return {Speed = ReadValueFloat(address + 0x35BC)}
end
core.getAccel = getAccel

local function getAngles() --Facing Angle Offset might not work on Japanese
	local address = Pointers.getAnglePointer()
	return {SpeedAngle = ReadValue16(address), FacingAngle = ReadValue16(address + 0x8)}
end
core.getAngles = getAngles

local function getCrrHealth()
	return ReadValue16(Pointers.getCrrHealth())
end
core.getCrrHealth = getCrrHealth

local function getCrrMagic()
	return ReadValue8(Pointers.getCrrMagic())
end
core.getCrrMagic = getCrrMagic

local function getKorlPos() --Offsets might not work on Japanese
	local address = Pointers.getKorlPositionPointer()
	return {X = ReadValueFloat(address + 0x1F8), Y = ReadValueFloat(address + 0x1FC), Z = ReadValueFloat(address + 0x200)}
end
core.getKorlPos = getKorlPos

local function hasStorage()
	if Pointers.hasStorage() == 1 then return true
	end
	return false
end
core.hasStorage = hasStorage

local function getAirRemaining()
	return ReadValue16(Pointers.getAirRemaining())
end
core.getAirRemaining = getAirRemaining

--local function getInventoryIndex()

--local function getEquipedItems() https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L412

--local function getSpoil/Delivery/BaitBagItems() https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L498

--local function getAnimationState()

--local functionn getAnimationSet() https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L668

--local function getStage()

--local function getRoom()

--local function getBalladLocation https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L54

--local function getStagePreload https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L98

--local function getStageInfo https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L739

--local function getPlayerState https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L867

--local function crrArrowSelection https://github.com/LagoLunatic/WW-Hacking-Docs/blob/35683c1dd823fb95011f66f6d1d7056844a30bf0/RAM%20Map.txt#L1133
return core
