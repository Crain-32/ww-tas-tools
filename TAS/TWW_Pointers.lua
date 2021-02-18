local Pointers = {}

GameID = ""

local function setGameId()
	local baseAddress = 0x80000000
	GameID = ReadValueString(baseAddress, 6) --Fails
end


local function getLinkPositionPointer()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803440C
	elseif GameID == "GZLE99" then baseAddress = 0x803440C
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return baseAddress
end
Pointers.getLinkPositionPointer = getLinkPositionPointer

local function getAccelPointer()
	setGameId()
	local baseAddress
	if GameID == "GZLEO1" then baseAddress = 0x803CA410
	elseif GameID == "GZLE99" then baseAddress = 0x803CA410
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	baseAddress = GetPointerNormal(baseAddress)
	return baseAddress
end
Pointers.getAccelPointer = getAccelPointer

local function getAnglePointer()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803F6F12
	elseif GameID == "GZLE99" then baseAddress = 0x803F6F12
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return baseAddress
end
Pointers.getAnglePointer = getAnglePointer

local function getCrrHealth()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803C4C0A
	elseif GameID == "GZLE99" then baseAddress = 0x803C4C0A
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return baseAddress
end
Pointers.getCrrHealth = getCrrHealth

local function getCrrMagic()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803C4C1C
	elseif GameID == "GZLE99" then baseAddress = 0x803C4C1C
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return baseAddress
	end
Pointers.getCrrMagic = getCrrMagic

local function hasStorage()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803C9EA3
	elseif GameID == "GZLE99" then baseAddress = 0x803C9EA3
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return ReadValue8(baseAddress)
end
Pointers.hasStorage = hasStorage

local function getAirRemaining()
	setGameId()
	local baseAddress
	if GameID == "GZLE01" then baseAddress = 0x803CA76E
	elseif GameID == "GZLE99" then baseAddress = 0x803CA76E
	elseif GameID == "GZLJ01" then baseAddress = 0x0
	end
	return baseAddress
end
Pointers.getAirRemaining = getAirRemaining
return Pointers
