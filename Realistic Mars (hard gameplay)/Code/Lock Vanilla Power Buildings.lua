-- Lock or Unlock buildings on game start / game load
local ToggleRB = true
local ToggleSC = true


function OnMsg.ModConfigChanged()
--lcPrint("Changed")
ToggleRB = ModConfig:Get("Hard Mode", "ToggleRealisticBatteries")
--lcPrint("ToggleRB = " .. tostring (ToggleRB))
ToggleSC = ModConfig:Get("Hard Mode", "ToggleSolarPanelBigElectronics")
--lcPrint("Toggle SC =  " .. tostring (ToggleSC))
RealisticBatteries()
SolarChange()
end
function OnMsg.ModConfigReady()
--lcPrint("Ready")
ToggleRB = ModConfig:Get("Hard Mode", "ToggleRealisticBatteries")
--lcPrint("ToggleRB = " .. tostring (ToggleRB))
ToggleSC = ModConfig:Get("Hard Mode", "ToggleSolarPanelBigElectronics")
--lcPrint("Toggle SC =  " .. tostring (ToggleSC))
RealisticBatteries()
SolarChange()
end

function RealisticBatteries()
if ToggleRB then 
 	LockBuilding("AtomicBattery") 			--lock vanilla
	LockBuilding("Battery_WaterFuelCell")	--lock vanilla
	UnlockBuilding("PA70")					--Unlock custom Basic
	
		if IsTechResearched("AtomicAccumulator") == nil then --Tech Case Custom
		LockBuilding("AA70")
		LockBuilding("AtomicBattery")
		else
		UnlockBuilding("AA70")				--Unlock custom advanced
		end
else		
	LockBuilding("AA70") 					--lock Custom
	LockBuilding("PA70")					--lock Custom
	UnlockBuilding("Battery_WaterFuelCell")	--unlock Vanilla Basic
	
		if IsTechResearched("AtomicAccumulator") == nil then --Tech Case Vanilla
		LockBuilding("AA70")
		LockBuilding("AtomicBattery")
		else
		UnlockBuilding("AtomicBattery")		--Unlock Vanilla advanced
		end
end	
end
function SolarChange()
	if ToggleSC then
	LockBuilding("SolarPanelBig")
	UnlockBuilding ("SolarPanelBigElectronics")
	else
	UnlockBuilding("SolarPanelBig")
	LockBuilding ("SolarPanelBigElectronics")
end
end

--Function Calls 
function OnMsg.GameTimeStart()
RealisticBatteries ()
SolarChange()
end

function OnMsg.LoadGame()
 RealisticBatteries	()
 SolarChange()
end

function OnMsg.TechResearched(tech_id,city,first_time)

	if tech_id == "AtomicAccumulator" then
	RealisticBatteries()
	end	
end