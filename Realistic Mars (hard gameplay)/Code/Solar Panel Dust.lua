--Function calls

function OnMsg.GameTimeStart()
ToggleSPD = ModConfig:Get("Hard Mode", "SolarPanelDust")
SolarPanelDust()
end

function OnMsg.LoadGame()
ToggleSPD = ModConfig:Get("Hard Mode", "SolarPanelDust")
SolarPanelDust()
end

function OnMsg.ModConfigReady()
ToggleSPD = ModConfig:Get("Hard Mode", "SolarPanelDust")
SolarPanelDust()
end

function OnMsg.ModConfigChanged()
ToggleSPD = ModConfig:Get("Hard Mode", "SolarPanelDust")
SolarPanelDust()
end

--Solar Panel Code
local OldUpdateProduction = SolarPanel.UpdateProduction --Store old function
ToggleSPD = true  --Toggle Variable
local BaseMultiplier = 2.0
local BaseMinimum = 0 --Minumum Production

function SolarPanelDust()


function SolarPanel:UpdateProduction() 
	if ToggleSPD then --Dusty Case
		local DustPenaltyMultiplier = 1-1.0*self.accumulated_maintenance_points/self.maintenance_threshold_current
		local affected = self:IsAffectedByArtificialSun()
		self:SetInteractionState((SunAboveHorizon or affected) and self.working)
		local base_production = (SunAboveHorizon or affected) and self:GetClassValue("electricity_production") or 0
		local production_penalty = self:GetProductionPenalty()
		self:SetBase("electricity_production", floatfloor((100 - production_penalty) *base_production* BaseMultiplier*DustPenaltyMultiplier/ 100)+BaseMinimum)
		--lcPrint(tostring(DustPenaltyMultiplier))
		RebuildInfopanel(self)
	else -- Vanilla Case
	OldUpdateProduction(self)
end
end

end
