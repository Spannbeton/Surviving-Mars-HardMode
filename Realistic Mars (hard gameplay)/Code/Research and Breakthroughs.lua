SubsurfaceAnomaly.OldScanCompleted = SubsurfaceAnomaly.ScanCompleted
local ToggleNOB = true

function SubsurfaceAnomaly:NewScanCompleted(scanner)
  local city = scanner and scanner.city or UICity
  local tech_action = self.tech_action 
  if tech_action == "breakthrough" and ToggleNOB==true then
    	BoostTechField(all, 2) 
	GrantResearchPoints(2000) 
	AddCustomOnScreenNotification("RSB","Breakthrough:","2% to all research, <research(2000)>")
		else
    		SubsurfaceAnomaly.OldScanCompleted(self, scanner)
	end
end
-- Set Default
SubsurfaceAnomaly.ScanCompleted = SubsurfaceAnomaly.NewScanCompleted

--- Mod Config Settings

function OnMsg.ModConfigReady()
ToggleNOB = ModConfig:Get("Hard Mode", "ToggleNoBreakthroughs")
--[[lcPrint ("No Breakthrough Initial-Call")
if ToggleNOB==false then
		--lcPrint ("No Breakthrough InitialCall-False Case")
else 
	--lcPrint ("No Breakthrough HourlyCall-Else Case")
end]]
end

function OnMsg.ModConfigChanged()
ToggleNOB = ModConfig:Get("Hard Mode", "ToggleNoBreakthroughs")
--[[lcPrint ("No Breakthrough Changed-Call")
if ToggleNOB==false then
		--lcPrint ("No Breakthrough ChangedCall-False Case")
else 
	--lcPrint ("No Breakthrough ChangedCall-Else Case")
end]]
end

--Debug
--[[
function OnMsg.NewHour(hour)
ToggleNOB = ModConfig:Get("Hard Mode", "ToggleNoBreakthroughs")
lcPrint ("No Breakthrough Hourly-Call")
if ToggleNOB==false then
	SubsurfaceAnomaly.ScanCompleted = SubsurfaceAnomaly.OldScanCompleted 
	--lcPrint ("No Breakthrough HourlyCall-False Case")
else 
	--lcPrint ("No Breakthrough HourlyCall-Else Case")
	SubsurfaceAnomaly.ScanCompleted = SubsurfaceAnomaly.NewScanCompleted
end
end
]]