local core = require "TWW_core"

lastFrame = 0
function onScriptStart()
  MsgBox("TestScript Running")
  lastFrame = GetFrameCount()
end

function onScriptUpdate()
  if GetFrameCount() - lastFrame == 1 then
    angleValue = core.getAngles()
    MsgBox("Speed Angle: " .. angleValue.SpeedAngle, 3)
    MsgBox("Facing Angle: " .. angleValue.FacingAngle, 3)
    MsgBox("Air Remaining: " .. core.getAirRemaining(), 3)
    MsgBox("Current Health: " .. core.getCrrHealth(), 3)
    MsgBox("Current Magic: " .. core.getCrrMagic(), 3)
    MsgBox("Has Storage: " .. tostring(core.hasStorage()), 3)
    lastFrame = GetFrameCount()
  end
end

function onScriptCancel()
end
