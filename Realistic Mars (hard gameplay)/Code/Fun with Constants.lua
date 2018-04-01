

--Adjust the all the Cuntstunts 
local ColonistperRocket = 12
local TravelTimePercentage = 100
local FundingPercent = 100

function OnMsg.GameTimeStart()
g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent
end
function OnMsg.LoadGame()
g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent
end



function OnMsg.ModConfigReady()

TravelTimePercentage = ModConfig:Get("Hard Mode", "TTPercent")
FundingPercent = ModConfig:Get("Hard Mode", "FundingPercent")
ColonistperRocket = ModConfig:Get("Hard Mode", "NumberColonists")

g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent

end

function OnMsg.ModConfigChanged()
TravelTimePercentage = ModConfig:Get("Hard Mode", "TTPercent")
FundingPercent = ModConfig:Get("Hard Mode", "FundingPercent")
ColonistperRocket = ModConfig:Get("Hard Mode", "NumberColonists")

g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent

end

