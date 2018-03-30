local ToggleWF = true --on by default 
WindTurbine.OldCalcProduction = WindTurbine.CalcProduction

function WindTurbine:Fluctuation()
  local elevation_bonus = self:GetElevationBonus()
    local production_bonus = 100 + (elevation_bonus - 50) 
	--Wind Fluctuation Parameters
	local wind_fluctuation_period = rawget(_G, "ModConfig") and ModConfig:Get("Hard Mode", "wf_period") or 32				--in hours (25h = 1 day) 
	local wind_fluctuation_min_production = rawget(_G, "ModConfig") and ModConfig:Get("Hard Mode", "wf_min_prod") or 40		-- in percentage of Base
	local wind_fluctuation_amplitude	= rawget(_G, "ModConfig") and ModConfig:Get("Hard Mode", "wf_amplitude") or 60		-- in percentage of Base 
	-- if the latter 2 values add up to 100 the median production is that of Base
	--Amplitude of sin is 4096 in game. +1 to keep it positive
	local wind_fluctuation = (((sin((360*60*GameTime())/(wind_fluctuation_period*const.HourDuration))/4096.0)+1)*wind_fluctuation_amplitude/100.0+wind_fluctuation_min_production/100.0)*self:GetClassValue("electricity_production")
	--decompiled code was wrong here
	  --production_bonus = not g_DustStorm or g_DustStorm.type == "great" and production_bonus + self.great_dust_storm_bonus_percent or production_bonus + self.dust_storm_bonus_percent
--Working Code thanks to Thorik (those are actually if-else cases)
production_bonus = not g_DustStorm and production_bonus 
or g_DustStorm and g_DustStorm.type == "great" and production_bonus + 
self.great_dust_storm_bonus_percent 
or g_DustStorm and production_bonus + self.dust_storm_bonus_percent
self:SetBase("electricity_production", MulDivRound(50 + production_bonus, floatfloor(wind_fluctuation), 100))
  self:UpdateWorking()
self:SetAnimSpeedModifier(Min(floatfloor((300 + 3 * production_bonus)*wind_fluctuation), 1100))
end


function OnMsg.ModConfigReady()
ToggleWF = rawget(_G, "ModConfig") and ModConfig:Get("Hard Mode", "ToggleWF")
 if ToggleWF then WindTurbine.CalcProduction = WindTurbine.Fluctuation
 end
end
function OnMsg.ModConfigChanged()
ToggleWF = rawget(_G, "ModConfig") and ModConfig:Get("Hard Mode", "ToggleWF") 
if ToggleWF then WindTurbine.CalcProduction = WindTurbine.Fluctuation
 end
end







