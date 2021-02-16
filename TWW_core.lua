local core = {}

local Pointers = require"TWW_Pointers"

local function getPos()
	local address = Pointers.getPositionPointer()
	return {X = ReadValueFloat(address), Y = ReadValueFloat(address + 0x4), Z = ReadValueFloat(address + 0x8)}
end
core.getPos = getPos

local function getPosPointer()
	local address = Pointers.getPositionPointer()
	return address
end
core.getPosPointer = getPosPointer

local function getAcceleration()
	local address = Pointer.getAccelerationPointer() --Needs to be modified to handle different version, waiting for JP information
	return {Speed = ReadValueFloat(address + 0x35BC)}
end
core.getAcceleration = getAcceleration

local function getAngles()
	local address = Pointer.getAnglePointer()
	return {SpeedAngle = ReadValue16(address), FacingAngle = ReadValue16(address + 0x8)}
end
core.getAngles = getAngles


return core
