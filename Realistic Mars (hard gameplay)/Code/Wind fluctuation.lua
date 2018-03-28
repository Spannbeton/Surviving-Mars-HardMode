WindTurbine.OldCalcProduction = WindTurbine.CalcProduction

function WindTurbine:CalcProduction()
  local elevation_bonus = self:GetElevationBonus()
    local production_bonus = 100 + (elevation_bonus - 50) 
	local wind_fluctuation_period = 3
	local wind_fluctuation = abs(cos((360*60*GameTime())/(wind_fluctuation_period*const.DayDuration)))/4096.0
	--decompiled code was wrong here
	  --production_bonus = not g_DustStorm or g_DustStorm.type == "great" and production_bonus + self.great_dust_storm_bonus_percent or production_bonus + self.dust_storm_bonus_percent
--Working Code thanks to Thorik (those are actually if-else cases)
production_bonus = not g_DustStorm and production_bonus 
or g_DustStorm and g_DustStorm.type == "great" and production_bonus + 
self.great_dust_storm_bonus_percent 
or g_DustStorm and production_bonus + self.dust_storm_bonus_percent
self:SetBase("electricity_production", MulDivRound(50 + production_bonus, floatfloor(self:GetClassValue("electricity_production")*wind_fluctuation), 100))
  self:UpdateWorking()
end
