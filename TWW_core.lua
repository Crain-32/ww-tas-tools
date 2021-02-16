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

local function getAcceleration() --Offset might not work on Japanese
	local address = Pointers.getAccelerationPointer()
	return {Speed = ReadValueFloat(address + 0x35BC)}
end
core.getAcceleration = getAcceleration

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


return core
