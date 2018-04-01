-- Upgrade Unlock 
function OnMsg.GameTimeStart()
UICity.unlocked_upgrades["FoodRebalanceFarmUpgrade"] = true
UICity.unlocked_upgrades["FoodRebalanceHydroponicsUpgrade"] = true
end

function OnMsg.LoadGame()
UICity.unlocked_upgrades["FoodRebalanceFarmUpgrade"] = true
UICity.unlocked_upgrades["FoodRebalanceHydroponicsUpgrade"] = true
end

-- ModConfig Integration

local ToggleFR=true

function OnMsg.ModConfigReady()
--lcPrint("Ready")
ToggleFR = ModConfig:Get("Hard Mode", "ToggleFoodRebalance")
--lcPrint("ToggleFR = " .. tostring (ToggleFR))
FoodRebalance()
end
function OnMsg.ModConfigChanged()
--lcPrint("Ready")
ToggleFR = ModConfig:Get("Hard Mode", "ToggleFoodRebalance")
--lcPrint("ToggleFR = " .. tostring (ToggleFR))
FoodRebalance()
end

--Rebalance Function

function FoodRebalance()

if ToggleFR then 
 	LockBuilding("FungalFarm") 			--lock vanilla
	LockBuilding("Farm")	--lock vanilla
	LockBuilding("HydroponicFarm")		--lock vanilla	
	UnlockBuilding("FRHydroponic")      --basic hydroponics
	
		if IsTechResearched("SoilAdaptation") == nil then --Tech Case Custom
		LockBuilding("FRConventional")
		LockBuilding("Farm")
		else
		UnlockBuilding("FRConventional")				--Unlock custom advanced
		end
		if IsTechResearched("LowGFungi") == nil then   --Tech Case Custom
		LockBuilding("FRFungal")
		LockBuilding("FungalFarm")
		else
		UnlockBuilding("FRFungal")				--Unlock custom advanced
		end
else		
	 	LockBuilding("FRFungal") 			--lock custom
		LockBuilding("FRConventional")	--lock custom
		LockBuilding("FRHydroponic")	
		UnlockBuilding("HydroponicFarm")
		
		if IsTechResearched("SoilAdaptation") == nil then --Tech Case Custom
		LockBuilding("FRConventional")
		LockBuilding("Farm")
		else
		UnlockBuilding("Farm")				--Unlock Vanilla advanced
		end
		if IsTechResearched("LowGFungi") == nil then   --Tech Case Custom
		LockBuilding("FRFungal")
		LockBuilding("FungalFarm")
		else
		UnlockBuilding("FungalFarm")				--Unlock Vanilla advanced
		end
		
end	
end