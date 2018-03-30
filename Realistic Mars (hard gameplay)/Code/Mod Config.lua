function OnMsg.ModConfigReady()
    local StringIdBase = 1339570684
    
    ModConfig:RegisterMod("Hard Mode", -- ID
        T{StringIdBase, "Difficulty Options (May require restart)"}, -- Optional display name, defaults to ID
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
		order = 1,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_min_prod", {
        name = T{StringIdBase + 4, "Wind Production (min) in % of Base"},
        desc = T{StringIdBase + 5, "Minimum WindProduction in percentage of Base"},
        type = "number",
        default = 40,
        min = 0,
        max = 100,
        step = 5,
		order = 1,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_amplitude", {
        name = T{StringIdBase + 6, "Wind Production (Amplitude) in % of Base"},
        desc = T{StringIdBase + 7, "Wind Amplitude in percentage of Base"},
        type = "number",
        default = 60,
        min = 0,
        max = 100,
        step = 5,
		order = 1,
    })

    ModConfig:RegisterOption("Hard Mode", "Wind Fluctuation Note", {
        name = T{StringIdBase + 8, "<scale 1500>Wind Fluctuation Options" },
		type = "note",
        order = 0,
    })
	    ModConfig:RegisterOption("Hard Mode", "Generic Note", {
        name = T{StringIdBase + 9, "<scale 1500>Generic Options"},
		type = "note",
        order = 2,
    })
	
	    ModConfig:RegisterOption("Hard Mode", "Toggles Note", {
        name = T{StringIdBase + 16, "<scale 1500>Toggle Submods"},
		type = "note",
        order = 4,
    })
	
	ModConfig:RegisterOption("Hard Mode", "ToggleNoBreakthroughs", {
        name = T{StringIdBase + 10, "No Breakthroughs"},
        desc = T{StringIdBase + 11, "Breakthroughs replaced by research boost" .. "\nYou can still get up to 4 via Omega Telescope and Mystery"},
        type = "boolean",
        default = true,
		order = 5,

    })
	

	
	ModConfig:RegisterOption("Hard Mode", "ToggleNoOutsourcing", {
        name = T{StringIdBase + 12, "No Outsourcing"},
        desc = T{StringIdBase + 13, "Disable Outsourcing"},
        type = "boolean",
        default = true,
		order = 5,

    })
	
	ModConfig:RegisterOption("Hard Mode", "ToggleRealisticBatteries", {
        name = T{StringIdBase + 12, "Realistic Batteries"},
        desc = T{StringIdBase + 13, "Batteries are only 70% efficient"},
        type = "boolean",
        default = true,
		order = 5,

    })
	
	ModConfig:RegisterOption("Hard Mode", "ToggleSolarPanelBigElectronics", {
        name = T{StringIdBase + 12, "Solar Change"},
        desc = T{StringIdBase + 13, "Big Solar Panels need 0.2 Electronics in Maintainance"},
        type = "boolean",
        default = true,
		order = 5,

    })
	
	ModConfig:RegisterOption("Hard Mode", "TTPercent", {
        name = T{StringIdBase + 14, "Travel Time in % of Base"},
        desc = T{StringIdBase + 15, "Time it takes for a Rocket to travel"},
        type = "number",
        default = 500,
        min = 10,
        max = 1000,
        step = 10,
		order = 3,

    })
	
	ModConfig:RegisterOption("Hard Mode", "NumberColonists", {
        name = T{StringIdBase + 14, "Number of Colonists per Rocket"},
        desc = T{StringIdBase + 15, "Maximum number of Colonists that can arrive on Mars in a single Rocket"},
        type = "number",
        default = 12,
        min = 1,
        max = 50,
        step = 1,
		order = 3,
    })
	
	ModConfig:RegisterOption("Hard Mode", "FundingPercent", {
        name = T{StringIdBase + 14, "Funding Gains in % of Base"},
        desc = T{StringIdBase + 15, "All Funding is multiplied by this percent"},
        type = "number",
        default = 80,
        min = 10,
        max = 150,
        step = 5,
		order = 3,

    })	
	
end

