function OnMsg.GameTimeStart()
g_Consts.OutsourceDisabled = 1
end
function OnMsg.Loadgame()
g_Consts.OutsourceDisabled = 1
end
--local lcSafePrint = lcPrint or function() end

function OnMsg.ModConfigReady()
	ToggleNOO = ModConfig:Get("Hard Mode", "ToggleNoOutsourcing") 
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


