g_Consts.OutsourceDisabled = 1

local ToggleNOO = true
--- Mod Config Settings
function OnMsg.NewHour(hour) --failsafe
ToggleNOO = ModConfig:Get("Hard Mode", "ToggleNoOutsourcing") or true
if (ToggleNOO==false) then
	g_Consts.OutsourceDisabled = 0
else 
 g_Consts.OutsourceDisabled = 1
end
end

function OnMsg.ModConfigChanged()
ToggleNOO = ModConfig:Get("Hard Mode", "ToggleNoOutsourcing") 
if (ToggleNOO==false) then
	g_Consts.OutsourceDisabled = 0
else 
 g_Consts.OutsourceDisabled = 1
end
end