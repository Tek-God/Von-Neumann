-- Kizrak

-- log(serpent.block( data.raw ))

if false then
	-- luacheck: ignore 511
	log("keys in data.raw")
	for k, _ in pairs(data.raw) do
		log(k)
	end

	log("keys in data.raw.roboport")
	for k, _ in pairs(data.raw["roboport"]) do
		log(k)
	end
end


local roboport = table.deepcopy( data.raw["roboport"]["roboport"] )
roboport.name = "vn-roboport"
roboport.order = "c[signal]-a[roboport]"
roboport.subgroup = "logistic-network"

roboport.construction_radius = 55*3
roboport.dying_explosion = "massive-explosion"

roboport.energy_usage = "0kW"
roboport.charging_energy = "100000kW"
roboport.recharge_minimum = "400MJ"
roboport.energy_source = {
	buffer_capacity = "10000MJ",
	input_flow_limit = "500MW",
	type = "electric",
	usage_priority = "secondary-input"
}

roboport.material_slots_count = 20
roboport.robot_slots_count = 20


local number_ports = 4*20
local port_radius = 1.5
roboport.charging_offsets = {}

for i=360/number_ports,360,360/number_ports do
	local x = port_radius * math.sin( math.rad(i) )
	local y = port_radius * math.cos( math.rad(i) )
	table.insert(roboport.charging_offsets,{x,y})
end

roboport.charge_approach_distance = 2


data:extend{roboport}
--log(serpent.block( roboport ))

