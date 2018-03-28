-- Lock or Unlock buildings on game start / game load
function OnMsg.GameTimeStart()
 	LockBuilding("AtomicBattery") 
	LockBuilding("Battery_WaterFuelCell")
	LockBuilding("SolarPanelBig")
	if IsTechResearched("AtomicAccumulator") == nil then
		LockBuilding("AA70")

	else
		UnlockBuilding("AA70")


	end
	
end

function OnMsg.LoadGame()
 	LockBuilding("AtomicBattery") 
	LockBuilding("Battery_WaterFuelCell")
	LockBuilding("SolarPanelBig")
	if IsTechResearched("AtomicAccumulator") == nil then
		LockBuilding("AA70")
	else
		UnlockBuilding("AA70")
	end
	
end

-- Unlock buildings when tech is researched
function OnMsg.TechResearched(tech_id,city,first_time)

	if tech_id == "AtomicAccumulator" then
		UnlockBuilding("AA70")
		LockBuilding("AtomicBattery") 
	end
	
end