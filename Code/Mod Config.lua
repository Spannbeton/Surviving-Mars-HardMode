local lcSafePrint = lcPrint or function() end

function OnMsg.ModConfigReady()
    local StringIdBase = 1339570684
	lcSafePrint("Mod Configuration Ready.\nTo display this Message on Mod reload set:\n Spannbeton = true \n The following Settings apply:")
    
    ModConfig:RegisterMod("Hard Mode", -- ID
        T{StringIdBase, "Realism Mod (Changes here may require restart)"}, -- Optional display name, defaults to ID
        T{StringIdBase + 1, "This Mod adds a bunch of new gameplay and diﬃculty options for you to choose to make surviving Mars more of a challenge."} -- Optional description
    )


	
    ModConfig:RegisterOption("Hard Mode", "wf_period", {
        name = T{StringIdBase + 2, "Wind Fluctuation Period (hours)"},
        desc = T{StringIdBase + 3, "The amount of hours between changes in wind speed"},
        type = "number",
        default = 32,
        min = 10,
        max = 150,
        step = 2,
		order = 11,
    })
lcSafePrint("Wind Fluctuation Period (hours) = " .. tostring (ModConfig:Get("Hard Mode", "wf_period")))

    ModConfig:RegisterOption("Hard Mode", "wf_min_prod", {
        name = T{StringIdBase + 4, "Wind Production (min) in % of Base"},
        desc = T{StringIdBase + 5, "Minimum Power form slow wind speeds"},
        type = "number",
        default = 40,
        min = 0,
        max = 100,
        step = 5,
		order = 11,
    })
lcSafePrint("Wind Production (min) in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "wf_min_prod")))

    ModConfig:RegisterOption("Hard Mode", "wf_amplitude", {
        name = T{StringIdBase + 6, "Wind Production (Amplitude) in % of Base"},
        desc = T{StringIdBase + 7, "Maximum bonus Power form fast wind speeds"},
        type = "number",
        default = 60,
        min = 0,
        max = 100,
        step = 5,
		order = 11,
    })
	
lcSafePrint("Wind Production (Amplitude) in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "wf_amplitude")))

    ModConfig:RegisterOption("Hard Mode", "Wind Fluctuation Note", {
        name = T{StringIdBase + 8, "<scale 1500>Wind Fluctuation Options" },
		type = "note",
        order = 10,
    })
	    ModConfig:RegisterOption("Hard Mode", "Generic Note", {
        name = T{StringIdBase + 9, "<scale 1500>Other Options"},
		type = "note",
        order = 20,
    })
	
	    ModConfig:RegisterOption("Hard Mode", "Toggles Note", {
        name = T{StringIdBase + 16, "<scale 1500>Toggle Submods"},
		type = "note",
        order = 30,
    })
	
	ModConfig:RegisterOption("Hard Mode", "ToggleNoBreakthroughs", {
        name = T{StringIdBase + 10, "No Breakthroughs"},
        desc = T{StringIdBase + 11, "Breakthroughs replaced by research boost." .. "\nYou can still get them from Events, 4 via Omega Telescope, and Mysteries."},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("No Breakthroughs = " .. tostring (ModConfig:Get("Hard Mode", "ToggleNoBreakthroughs")))

	
	ModConfig:RegisterOption("Hard Mode", "ToggleNoOutsourcing", {
        name = T{StringIdBase + 12, "No Outsourcing"},
        desc = T{StringIdBase + 13, "Disable Outsourcing"},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("No Outsourcing = " .. tostring (ModConfig:Get("Hard Mode", "ToggleNoOutsourcing")))
	
	ModConfig:RegisterOption("Hard Mode", "ToggleRealisticBatteries", {
        name = T{StringIdBase + 12, "Realistic Batteries"},
        desc = T{StringIdBase + 13, "Batteries are only 70% efficient"},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("Realistic Batteries = " .. tostring (ModConfig:Get("Hard Mode", "ToggleRealisticBatteries")))
	
	ModConfig:RegisterOption("Hard Mode", "ToggleSolarPanelBigElectronics", {
        name = T{StringIdBase + 12, "Solar Rebalance"},
        desc = T{StringIdBase + 13, "Solar Panels need <color em>Electronics</color> to Build" .. "\nSmall Solar Panels need only <color em>Metal</color> to maintain" .. "\nSolar Array actually useful"},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("ToggleSolarPanelBigElectronics = " .. tostring (ModConfig:Get("Hard Mode", "ToggleSolarPanelBigElectronics")))
	
	--ModConfig:RegisterOption("Hard Mode", "TTPercent", {
        --name = T{StringIdBase + 14, "Travel Time in % of Base"},
        --desc = T{StringIdBase + 15, "Time it takes for a Rocket to travel"},
        --type = "number",
        --default = 100,
        --min = 10,
        --max = 1000,
        --step = 10,
		--order = 21,

    --})
	--lcSafePrint("Travel Time in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "TTPercent")))
	
	ModConfig:RegisterOption("Hard Mode", "NumberColonists", {
        name = T{StringIdBase + 14, "Number of Colonists per Rocket"},
        desc = T{StringIdBase + 15, "Maximum number of Colonists that can arrive on Mars in a single Rocket"},
        type = "number",
        default = 12,
        min = 1,
        max = 50,
        step = 1,
		order = 21,
    })
	lcSafePrint("Number of Colonists per Rocket = " .. tostring (ModConfig:Get("Hard Mode", "NumberColonists")))
	
	ModConfig:RegisterOption("Hard Mode", "FundingPercent", {
        name = T{StringIdBase + 14, "Funding Gains in % of Base"},
        desc = T{StringIdBase + 15, "Receive this percentage of Funding"},
        type = "number",
        default = 100,
        min = 10,
        max = 150,
        step = 5,
		order = 21,

    })	
	lcSafePrint("Funding Gains in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "FundingPercent")))
	
	ModConfig:RegisterOption("Hard Mode", "ToggleFoodRebalance", {
        name = T{StringIdBase + 16, "Food Production Rebalance"},
        desc = T{StringIdBase + 17, "All Food producing buildings fill a different, but relevant role now"},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("Food Production Rebalance = " .. tostring (ModConfig:Get("Hard Mode", "ToggleFoodRebalance")))
	
		ModConfig:RegisterOption("Hard Mode", "SolarPanelDust", {
        name = T{StringIdBase + 18, "Solar Panel Dust Penalty"},
        desc = T{StringIdBase + 19, "Dust and storms decrease Solar Power over time" .. "\nSolar Power is doubled after construction and maintenance" .. "\nArray Power does not change as the effectiveness of individual panels are balanced"},
        type = "boolean",
        default = false,
		order = 31,

    })
	lcSafePrint("Solar Panel Dust Penalty = " .. tostring (ModConfig:Get("Hard Mode", "SolarPanelDust")))
end

--Debugfunctionality
Spannbeton = false
function OnMsg.ModConfigChanged()

if Spannbeton ==true then
lcSafePrint("Mod Configuration Changed.\n The following Settings apply:")
  
lcSafePrint("Wind Fluctuation Period (hours) = " .. tostring (ModConfig:Get("Hard Mode", "wf_period")))

lcSafePrint("Wind Production (min) in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "wf_min_prod")))

lcSafePrint("Wind Production (Amplitude) in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "wf_amplitude")))

lcSafePrint("No Breakthroughs = " .. tostring (ModConfig:Get("Hard Mode", "ToggleNoBreakthroughs")))

lcSafePrint("No Outsourcing = " .. tostring (ModConfig:Get("Hard Mode", "ToggleNoOutsourcing")))

lcSafePrint("Realistic Batteries = " .. tostring (ModConfig:Get("Hard Mode", "ToggleRealisticBatteries")))

lcSafePrint("ToggleSolarPanelBigElectronics = " .. tostring (ModConfig:Get("Hard Mode", "ToggleSolarPanelBigElectronics")))

--lcSafePrint("Travel Time in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "TTPercent")))

lcSafePrint("Number of Colonists per Rocket = " .. tostring (ModConfig:Get("Hard Mode", "NumberColonists")))

lcSafePrint("Funding Gains in % of Base = " .. tostring (ModConfig:Get("Hard Mode", "FundingPercent")))

lcSafePrint("Food Production Rebalance = " .. tostring (ModConfig:Get("Hard Mode", "ToggleFoodRebalance")))

lcSafePrint("Solar Panel Dust Penalty = " .. tostring (ModConfig:Get("Hard Mode", "SolarPanelDust")))

else end
end
