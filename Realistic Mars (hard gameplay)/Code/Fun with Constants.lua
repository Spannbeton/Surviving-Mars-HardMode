local lcSafePrint = lcPrint or function() end

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
--lcSafePrint("MCReady")
--lcSafePrint ("TT = " .. tostring(TravelTimePercentage))
--lcSafePrint ("FP = ".. tostring(FundingPercent))
--lcSafePrint ("CpR = ".. tostring(ColonistperRocket))
--lcSafePrint("constTT = "..tostring(g_Consts.TravelTimeEarthMars))
--lcSafePrint("ConstFP = "..tostring(g_Consts.FundingGainsModifier))
--lcSafePrint("ConstCPR = "..tostring(g_Consts.MaxColonistsPerRocket))
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
--lcSafePrint("MCReady")
--lcSafePrint ("TT = " .. tostring(TravelTimePercentage))
--lcSafePrint ("FP = ".. tostring(FundingPercent))
--lcSafePrint ("CpR = ".. tostring(ColonistperRocket))
--lcSafePrint("constTT = "..tostring(g_Consts.TravelTimeEarthMars))
--lcSafePrint("ConstFP = "..tostring(g_Consts.FundingGainsModifier))
--lcSafePrint("ConstCPR = "..tostring(g_Consts.MaxColonistsPerRocket))
end

