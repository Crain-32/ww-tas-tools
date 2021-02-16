local Pointers = {}

GameID = ""

local function onScriptStart()
	GameID = ReadValueString(0x0, 6)
end


local function getPositionPointer()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803440C
	elseif GameID == "GZLE99" then baseAddress = 0x803440C
	elseif GameID == "GZLJ01" then baseAddress = 0x0000000
	end
	MsgBox("This is GamgeID ")
	MsgBox(GameID)
	MsgBox(baseAddress)
	return baseAddress
end
Pointers.getPositionPointer = getPositionPointer

local function getAccelerationPointer()
	local baseAddress
	if GameID == "GZLEO1" then baseAddress = 0x803CA410
	elseif GameID == "GZLE99" then baseAddress = 0x803CA410
	elseif GameID == "GZLJ01" then baseAddress = 0x00000000
	end
	baseAddress = GetPointerNormal(baseAddress)
	return baseAddress
end
Pointers.getAccelerationPointer = getSpeedPointer

local function getAnglePointer()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803F6F12
	elseif GameID == "GZLE99" then baseAddress = 0x803F6F12
	elseif GameID == "GZLJ01" then baseAddress = 0x00000000
	end
	return baseAddress
end
Pointers.getAnglePointer = getAnglePointer


return Pointers
