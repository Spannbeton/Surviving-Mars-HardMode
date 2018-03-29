function OnMsg.ModConfigReady()
    local StringIdBase = 1339570684
    
    ModConfig:RegisterMod("Hard Mode", -- ID
        T{StringIdBase, "Hard Mode"}, -- Optional display name, defaults to ID
        T{StringIdBase + 1, "Toggle Submods"} -- Optional description
    )

    ModConfig:RegisterOption("Hard Mode", "wf_period", {
        name = T{StringIdBase + 2, "Fluctuation period (hours)"},
        desc = T{StringIdBase + 3, "The amount of hours in a fluctuation period"},
        type = "number",
        default = 32,
        min = 10,
        max = 150,
        step = 2,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_min_prod", {
        name = T{StringIdBase + 4, "min. Production in % of Base"},
        desc = T{StringIdBase + 5, "Minimum Production in percentage of Base"},
        type = "number",
        default = 40,
        min = 0,
        max = 100,
        step = 5,
    })


    ModConfig:RegisterOption("Hard Mode", "wf_amplitude", {
        name = T{StringIdBase + 6, "Amplitude in % of Base"},
        desc = T{StringIdBase + 7, "Amplitude in percentage of Base"},
        type = "number",
        default = 60,
        min = 0,
        max = 100,
        step = 5,
    })

    ModConfig:RegisterOption("Hard Mode", "ToggleWF", {
        name = T{StringIdBase + 8, "Toggle Wind Fluctuation"},
        desc = T{StringIdBase + 9, "1=ON 2=OFF"},
        type = "boolean",
        default = true,

    })
end

