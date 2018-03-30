

--Adjust the all the Cuntstunts 

local TravelTimePercentage = 100
g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100

local ColonistperRocket = 12
g_Consts.MaxColonistsPerRocket = ColonistperRocket

local FundingPercent = 100
g_Consts.FundingGainsModifier = FundingPercent

function OnMsg.ModConfigReady()

TravelTimePercentage = ModConfig:Get("Hard Mode", "TTPercent")
FundingPercent = ModConfig:Get("Hard Mode", "FundingPercent")
ColonistperRocket = ModConfig:Get("Hard Mode", "NumberColonists")

g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent
--debug
--lcPrint("MCReady")
--lcPrint ("TT = " .. tostring(TravelTimePercentage))
--lcPrint ("FP = ".. tostring(FundingPercent))
--lcPrint ("CpR = ".. tostring(ColonistperRocket))
--lcPrint("constTT = "..tostring(g_Consts.TravelTimeEarthMars))
--lcPrint("ConstFP = "..tostring(g_Consts.FundingGainsModifier))
--lcPrint("ConstCPR = "..tostring(g_Consts.MaxColonistsPerRocket))
end

function OnMsg.ModConfigChanged()
TravelTimePercentage = ModConfig:Get("Hard Mode", "TTPercent")
FundingPercent = ModConfig:Get("Hard Mode", "FundingPercent")
ColonistperRocket = ModConfig:Get("Hard Mode", "NumberColonists")

g_Consts.TravelTimeEarthMars = 750000*TravelTimePercentage/100
g_Consts.TravelTimeMarsEarth = 750000*TravelTimePercentage/100
g_Consts.MaxColonistsPerRocket = ColonistperRocket
g_Consts.FundingGainsModifier = FundingPercent
--debug
--lcPrint("MCReady")
--lcPrint ("TT = " .. tostring(TravelTimePercentage))
--lcPrint ("FP = ".. tostring(FundingPercent))
--lcPrint ("CpR = ".. tostring(ColonistperRocket))
--lcPrint("constTT = "..tostring(g_Consts.TravelTimeEarthMars))
--lcPrint("ConstFP = "..tostring(g_Consts.FundingGainsModifier))
--lcPrint("ConstCPR = "..tostring(g_Consts.MaxColonistsPerRocket))
end

