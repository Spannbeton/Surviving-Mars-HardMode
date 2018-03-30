function OnMsg.ModConfigReady()
    local StringIdBase = 1339570684
    
    ModConfig:RegisterMod("Hard Mode", -- ID
        T{StringIdBase, "Hard Mode"}, -- Optional display name, defaults to ID
        T{StringIdBase + 1, "Toggle Submods"} -- Optional description
    )


	
    ModConfig:RegisterOption("Hard Mode", "wf_period", {
        name = T{StringIdBase + 2, "Wind Fluctuation Period (hours)"},
        desc = T{StringIdBase + 3, "The amount of hours in a fluctuation period"},
        type = "number",
        default = 32,
        min = 10,
        max = 150,
        step = 2,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_min_prod", {
        name = T{StringIdBase + 4, "Wind Production (min) in % of Base"},
        desc = T{StringIdBase + 5, "Minimum WindProduction in percentage of Base"},
        type = "number",
        default = 40,
        min = 0,
        max = 100,
        step = 5,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_amplitude", {
        name = T{StringIdBase + 6, "Wind Production (Amplitude) in % of Base"},
        desc = T{StringIdBase + 7, "Wind Amplitude in percentage of Base"},
        type = "number",
        default = 60,
        min = 0,
        max = 100,
        step = 5,
    })

	--[[	    ModConfig:RegisterOption("Hard Mode", "ToggleWindFluctuation", {
        name = T{StringIdBase + 8, "Toggle Wind Fluctuation"},
        desc = T{StringIdBase + 9, "ON/OFF"},
        type = "boolean",
        default = true,

    })
	Commented out because it doesnt work
	]]
	
	    ModConfig:RegisterOption("Hard Mode", "ToggleNoBreakthroughs", {
        name = T{StringIdBase + 10, "Toggle No Breakthroughs"},
        desc = T{StringIdBase + 11, "ON/OFF"},
        type = "boolean",
        default = true,

    })
	

	
		    ModConfig:RegisterOption("Hard Mode", "ToggleNoOutsourcing", {
        name = T{StringIdBase + 12, "Toggle No Outsourcing"},
        desc = T{StringIdBase + 13, "ON/OFF"},
        type = "boolean",
        default = true,

    })
	
			    ModConfig:RegisterOption("Hard Mode", "ToggleRealisticBatteries", {
        name = T{StringIdBase + 12, "Toggle Realistic Batteries"},
        desc = T{StringIdBase + 13, "ON/OFF"},
        type = "boolean",
        default = true,

    })
	
				    ModConfig:RegisterOption("Hard Mode", "ToggleSolarPanelBigElectronics", {
        name = T{StringIdBase + 12, "Toggle Solar Change"},
        desc = T{StringIdBase + 13, "ON/OFF"},
        type = "boolean",
        default = true,

    })
	
end

