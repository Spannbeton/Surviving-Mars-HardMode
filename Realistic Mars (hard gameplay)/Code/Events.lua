--Westeregg
function OnMsg.GameTimeStart()

FlagSpacemanTrigger = false
FlagSpacemanHappened = false
Spacemantime = -300000

end

function OnMsg.RocketLaunchFromEarth(rocket)
 --lcPrint("Launch1")
 local passengers_idx = table.find(rocket.cargo, "class", "Passengers")
 --lcPrint("Launch2")
  if  passengers_idx and GetMissionSponsor().name == "SpaceY" then
  --lcPrint("Launch 3 " .. tostring(Spacemantime)) 
	Spacemantime = GameTime()+floatfloor(0.9*g_Consts.TravelTimeEarthMars)
	FlagSpacemanTrigger = true
	--lcPrint("Launch 4 " .. tostring(Spacemantime)) 
else
end
end

function OnMsg.NewHour(hour)
if GameTime() > Spacemantime and FlagSpacemanTrigger == true and FlagSpacemanHappened == false then
FlagSpacemanHappened = true
WaitPopupNotification(false, {
                    title = T{"Near Miss"}, 
                    text = T{"Our passenger Rocket nearly got hit by an unidentified heavy metal object en route to Mars. The captain managed to perform a last minute high-G burn to evade what could have been a critical collision with the object. Upon closer inspection of the footage from the rocket's monitoring system the heavy metal object turned out to be a red-painted roadster car with, what to much of the crew's amazement seemed to be an astronaut in the driver's seat. <newline> The captain, age 48, couldn't contain his laughter for a handful of minutes while repeating the words ''Don't Panic! Don't Panic!'' on speaker. This didn't put the passengers' minds at rest, who were visibly shaken."}, 
                    choice1 = T{"What a stupid joke"}, 
                    image = Mods["LvDVa"]:GetModRootPath() .. "/UI/Messages/Starman2.tga", 
}) 
	
else 
end
end 
