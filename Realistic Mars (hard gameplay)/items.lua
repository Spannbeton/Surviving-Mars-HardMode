return {
PlaceObj('ModItemBuildingTemplate', {
	'name', "AA70",
	'template_class', "ElectricityStorage",
	'pin_rollover_context', "electricity",
	'pin_rollover_hint', T{525471871733, --[[ModItemBuildingTemplate AA70 pin_rollover_hint]] "<image UI/Infopanel/left_click.tga 1400> Select"},
	'pin_rollover_hint_xbox', T{526827620713, --[[ModItemBuildingTemplate AA70 pin_rollover_hint_xbox]] "<image UI/PS4/Cross.tga> View"},
	'pin_progress_value', "current_storage",
	'pin_progress_max', "storage_capacity",
	'construction_cost_Concrete', 5000,
	'construction_cost_Polymers', 5000,
	'construction_entity', "AtomicBattery",
	'build_points', 2000,
	'dome_forbidden', true,
	'construction_state', "full",
	'maintenance_resource_type', "Polymers",
	'maintenance_resource_amount', 2000,
	'display_name', T{999274746328, --[[ModItemBuildingTemplate AA70 display_name]] "Atomic Accumulator "},
	'display_name_pl', T{633493813649, --[[ModItemBuildingTemplate AA70 display_name_pl]] "Atomic Accumulators"},
	'description', T{524699306470, --[[ModItemBuildingTemplate AA70 description]] "Stores Power at 70% efficiency. High capacity and max output, but charges slowly."},
	'build_category', "Power",
	'display_icon', "UI/Icons/Buildings/atomic_batteries.tga",
	'build_pos', 7,
	'entity', "AtomicBattery",
	'encyclopedia_image', "UI/Encyclopedia/AtomicAccumulator.tga",
	'label1', "OutsideBuildings",
	'label2', "OutsideBuildingsTargets",
	'color_modifier', RGBA(236, 19, 207, 255),
	'palettes', "Outside_09",
	'demolish_sinking', range(15, 30),
	'demolish_tilt_angle', range(300, 600),
	'max_electricity_charge', 50000,
	'max_electricity_discharge', 100000,
	'conversion_efficiency', 70,
	'capacity', 2000000,
	'charge_animation', "charge",
	'empty_state', "idle",
	'full_state', "full",
}),
PlaceObj('ModItemBuildingTemplate', {
	'name', "PA70",
	'template_class', "ElectricityStorage",
	'pin_rollover_context', "electricity",
	'pin_rollover_hint', T{927640930547, --[[ModItemBuildingTemplate PA70 pin_rollover_hint]] "<image UI/Infopanel/left_click.tga 1400> Select"},
	'pin_rollover_hint_xbox', T{345277370171, --[[ModItemBuildingTemplate PA70 pin_rollover_hint_xbox]] "<image UI/PS4/Cross.tga> View"},
	'pin_progress_value', "current_storage",
	'pin_progress_max', "storage_capacity",
	'construction_cost_Concrete', 3000,
	'construction_cost_Polymers', 2000,
	'construction_entity', "FuelCell",
	'build_points', 1500,
	'dome_forbidden', true,
	'construction_state', "full",
	'maintenance_resource_type', "Polymers",
	'display_name', T{303705913100, --[[ModItemBuildingTemplate PA70 display_name]] "Power Accumulator"},
	'display_name_pl', T{670749756115, --[[ModItemBuildingTemplate PA70 display_name_pl]] "Power Accumulators"},
	'description', T{548498651217, --[[ModItemBuildingTemplate PA70 description]] "Stores Power at 70% efficiency. Amount of Power supplied is limited by the battery’s max output."},
	'build_category', "Power",
	'display_icon', "UI/Icons/Buildings/fuel_cell.tga",
	'build_pos', 6,
	'entity', "FuelCell",
	'encyclopedia_image', "UI/Encyclopedia/PowerAccumulator.tga",
	'build_shortcut1', "K",
	'label1', "OutsideBuildings",
	'label2', "OutsideBuildingsTargets",
	'palettes', "Battery_WaterFuelCell",
	'demolish_sinking', range(5, 5),
	'demolish_tilt_angle', range(900, 1200),
	'demolish_debris', 85,
	'max_electricity_charge', 20000,
	'max_electricity_discharge', 20000,
	'conversion_efficiency', 70,
	'capacity', 200000,
	'charge_animation', "charge",
	'empty_state', "idle",
	'full_state', "full",
}),
PlaceObj('ModItemCode', {
	'name', "Lock Vanilla Power Buildings",
	'FileName', "Code/Lock Vanilla Power Buildings.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Research and Breakthroughs",
	'FileName', "Code/Research and Breakthroughs.lua",
}),
PlaceObj('ModItemCode', {
	'name', "No Outsourcing",
	'FileName', "Code/No Outsourcing.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Wonders",
	'FileName', "Code/Wonders.lua",
}),
PlaceObj('ModItemGameValue', {
	'id', "TravelTimeEarthMars",
	'percent', 50,
}),
PlaceObj('ModItemGameValue', {
	'id', "MaxColonistsPerRocket",
	'percent', -30,
}),
PlaceObj('ModItemGameValue', {
	'id', "FundingGainsModifier",
	'percent', -20,
}),
PlaceObj('ModItemGameValue', {
	'id', "TravelTimeMarsEarth",
	'percent', 50,
}),
}
