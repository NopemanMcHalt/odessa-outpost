//----------------------------------------------
//-----------------ENGINEERING------------------
//----------------------------------------------

/datum/supply_pack/internals
	name = "Internals crate"
	contains = list(/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas,
					/obj/item/weapon/tank/air,
					/obj/item/weapon/tank/air,
					/obj/item/weapon/tank/air)
	cost = 600
	containertype = /obj/structure/closet/crate/internals
	crate_name = "Internals crate"
	group = "Engineering"

/datum/supply_pack/sleeping_agent
	name = "Canister: \[N2O\]"
	contains = list(/obj/machinery/portable_atmospherics/canister/sleeping_agent)
	cost = 2000
	containertype = /obj/structure/largecrate
	crate_name = "N2O crate"
	group = "Engineering"

/datum/supply_pack/oxygen
	name = "Canister: \[O2\]"
	contains = list(/obj/machinery/portable_atmospherics/canister/oxygen)
	cost = 1500
	containertype = /obj/structure/largecrate
	crate_name = "O2 crate"
	group = "Engineering"

/datum/supply_pack/nitrogen
	name = "Canister: \[N2\]"
	contains = list(/obj/machinery/portable_atmospherics/canister/nitrogen)
	cost = 1500
	containertype = /obj/structure/largecrate
	crate_name = "N2 crate"
	group = "Engineering"

/datum/supply_pack/air
	name = "Canister \[Air\]"
	contains = list(/obj/machinery/portable_atmospherics/canister/air)
	cost = 1500
	containertype = /obj/structure/largecrate
	crate_name = "Air crate"
	group = "Engineering"

/datum/supply_pack/evacuation
	name = "Emergency equipment"
	contains = list(/obj/item/weapon/storage/toolbox/emergency,
					/obj/item/weapon/storage/toolbox/emergency,
					/obj/item/clothing/suit/storage/hazardvest,
					/obj/item/clothing/suit/storage/hazardvest,
					/obj/item/weapon/tank/emergency_oxygen,
					/obj/item/weapon/tank/emergency_oxygen,
					/obj/item/weapon/tank/emergency_oxygen,
					/obj/item/weapon/tank/emergency_oxygen,
					/obj/item/weapon/tank/emergency_oxygen,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/mask/gas)
	cost = 1000
	containertype = /obj/structure/closet/crate/internals
	crate_name = "Emergency crate"
	group = "Engineering"

/datum/supply_pack/inflatable
	name = "Inflatable barriers"
	contains = list(/obj/item/weapon/storage/briefcase/inflatable,
					/obj/item/weapon/storage/briefcase/inflatable,
					/obj/item/weapon/storage/briefcase/inflatable,
					/obj/item/weapon/storage/briefcase/inflatable,
					/obj/item/weapon/storage/briefcase/inflatable)
	cost = 1500
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Inflatable Barrier Crate"
	group = "Engineering"

/datum/supply_pack/lightbulbs
	name = "Replacement lights"
	contains = list(/obj/item/weapon/storage/box/lights/mixed,
					/obj/item/weapon/storage/box/lights/mixed,
					/obj/item/weapon/storage/box/lights/mixed,
					/obj/item/weapon/storage/box/lights/mixed)
	cost = 700
	containertype = /obj/structure/closet/crate
	crate_name = "Replacement lights"
	group = "Engineering"

/datum/supply_pack/metal120
	name = "120 metal sheets"
	contains = list(/obj/item/stack/material/steel)
	amount = 120
	cost = 500
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Metal sheets crate"
	group = "Engineering"

/datum/supply_pack/metal480
	name = "Bulk metal crate"
	contains = list(/obj/item/stack/material/steel/full,
	/obj/item/stack/material/steel/full,
	/obj/item/stack/material/steel/full,
	/obj/item/stack/material/steel/full)
	cost = 1200
	containertype = /obj/structure/largecrate
	crate_name = "Bulk metal crate"
	group = "Engineering"

/datum/supply_pack/glass50
	name = "120 glass sheets"
	contains = list(/obj/item/stack/material/glass)
	amount = 120
	cost = 500
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Glass sheets crate"
	group = "Engineering"

/datum/supply_pack/wood50
	name = "120 wooden planks"
	contains = list(/obj/item/stack/material/wood)
	amount = 120
	cost = 2500
	containertype = /obj/structure/closet/crate
	crate_name = "Wooden planks crate"
	group = "Engineering"

/datum/supply_pack/plasteel60
	name = "60 Plasteel Sheets"
	contains = list(/obj/item/stack/material/plasteel)
	amount = 60
	cost = 3000
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Plasteel sheets crate"
	group = "Engineering"

/datum/supply_pack/electrical
	name = "Electrical maintenance crate"
	contains = list (/obj/item/weapon/storage/toolbox/electrical,
					/obj/item/weapon/storage/toolbox/electrical,
					/obj/item/clothing/gloves/insulated,
					/obj/item/clothing/gloves/insulated,
					/obj/item/weapon/cell/large,
					/obj/item/weapon/cell/large,
					/obj/item/weapon/cell/large/high,
					/obj/item/weapon/cell/large/high)
	cost = 1200
	containertype = /obj/structure/closet/crate
	crate_name = "Electrical maintenance crate"
	group = "Engineering"

/datum/supply_pack/mechanical
	name = "Mechanical maintenance crate"
	contains = list(/obj/item/weapon/storage/belt/utility/full,
					/obj/item/weapon/storage/belt/utility/full,
					/obj/item/weapon/storage/belt/utility/full,
					/obj/item/clothing/suit/storage/hazardvest,
					/obj/item/clothing/suit/storage/hazardvest,
					/obj/item/clothing/suit/storage/hazardvest,
					/obj/item/clothing/head/welding,
					/obj/item/clothing/head/welding,
					/obj/item/clothing/head/hardhat)
	cost = 1000
	containertype = /obj/structure/closet/crate
	crate_name = "Mechanical maintenance crate"
	group = "Engineering"

/datum/supply_pack/toolmods
	contains = list(/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade,
					/obj/random/tool_upgrade)
	name = "Unsorted Tool Upgrades"
	cost = 1500
	containertype = /obj/structure/closet/crate
	crate_name = "Tool upgrade Crate"
	group = "Engineering"

/datum/supply_pack/fueltank
	name = "Fuel tank crate"
	contains = list(/obj/structure/reagent_dispensers/fueltank)
	cost = 1000
	containertype = /obj/structure/largecrate
	crate_name = "fuel tank crate"
	group = "Engineering"

/datum/supply_pack/fuelcrate2
	name = "Fuel crate" //1000 fuel
	contains = list(/obj/item/weapon/weldpack,
			/obj/item/weapon/weldpack,
			/obj/item/weapon/weldpack/canister,
			/obj/item/weapon/weldpack/canister,
			/obj/item/weapon/weldpack/canister,)
	cost = 2500
	access = FALSE
	containertype = /obj/structure/closet/crate
	crate_name = "fuel crate"
	group = "Engineering"

/datum/supply_pack/solar
	name = "Solar Pack crate"
	contains  = list(/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly,
					/obj/item/solar_assembly, // 21 Solar Assemblies. 1 Extra for the controller
					/obj/item/weapon/circuitboard/solar_control,
					/obj/item/weapon/tracker_electronics,
					/obj/item/weapon/paper/solar)
	cost = 2000
	containertype = /obj/structure/closet/crate
	crate_name = "Solar pack crate"
	group = "Engineering"

/datum/supply_pack/engine
	name = "Emitter crate"
	contains = list(/obj/machinery/power/emitter,
					/obj/machinery/power/emitter)
	cost = 1500
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Emitter crate"
	group = "Engineering"

/datum/supply_pack/engine/field_gen
	name = "Field Generator crate"
	contains = list(/obj/machinery/field_generator,
					/obj/machinery/field_generator)
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Field Generator crate"

/datum/supply_pack/engine/sing_gen
	name = "Singularity Generator crate"
	contains = list(/obj/machinery/the_singularitygen)
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Singularity Generator crate"

/datum/supply_pack/engine/collector
	name = "Collector crate"
	contains = list(/obj/machinery/power/rad_collector,
					/obj/machinery/power/rad_collector,
					/obj/machinery/power/rad_collector)
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Collector crate"

/datum/supply_pack/engine/PA
	name = "Particle Accelerator crate"
	cost = 4000
	contains = list(/obj/structure/particle_accelerator/fuel_chamber,
					/obj/machinery/particle_accelerator/control_box,
					/obj/structure/particle_accelerator/particle_emitter/center,
					/obj/structure/particle_accelerator/particle_emitter/left,
					/obj/structure/particle_accelerator/particle_emitter/right,
					/obj/structure/particle_accelerator/power_box,
					/obj/structure/particle_accelerator/end_cap)
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Particle Accelerator crate"

/datum/supply_pack/mecha_ripley
	name = "Circuit Crate (\"Ripley\" APLU)"
	contains = list(/obj/item/weapon/book/manual/ripley_build_and_repair,
					/obj/item/weapon/circuitboard/mecha/ripley/main, //TEMPORARY due to lack of circuitboard printer
					/obj/item/weapon/circuitboard/mecha/ripley/peripherals) //TEMPORARY due to lack of circuitboard printer
	cost = 3000
	containertype = /obj/structure/closet/crate/secure/scisecurecrate
	crate_name = "APLU \"Ripley\" Circuit Crate"
	access = access_robotics
	group = "Engineering"

/datum/supply_pack/mecha_odysseus
	name = "Circuit Crate (\"Odysseus\")"
	contains = list(/obj/item/weapon/circuitboard/mecha/odysseus/peripherals, //TEMPORARY due to lack of circuitboard printer
					/obj/item/weapon/circuitboard/mecha/odysseus/main) //TEMPORARY due to lack of circuitboard printer
	cost = 2500
	containertype = /obj/structure/closet/crate/secure/scisecurecrate
	crate_name = "\"Odysseus\" Circuit Crate"
	access = access_robotics
	group = "Engineering"

/datum/supply_pack/robotics
	name = "Robotics assembly crate"
	contains = list(/obj/item/device/assembly/prox_sensor,
					/obj/item/device/assembly/prox_sensor,
					/obj/item/device/assembly/prox_sensor,
					/obj/item/weapon/storage/toolbox/electrical,
					/obj/item/device/flash,
					/obj/item/device/flash,
					/obj/item/device/flash,
					/obj/item/device/flash,
					/obj/item/weapon/cell/large/high,
					/obj/item/weapon/cell/large/high)
	cost = 1000
	containertype = /obj/structure/closet/crate/secure/scisecurecrate
	crate_name = "Robotics assembly"
	access = access_robotics
	group = "Engineering"

//Contains six, you'll probably want to build several of these
/datum/supply_pack/shield_diffuser
	contains = list(/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser,
	/obj/item/weapon/circuitboard/shield_diffuser)
	name = "Shield diffuser circuitry"
	cost = 3000
	containertype = /obj/structure/closet/crate/secure
	crate_name = "Shield diffuser circuitry crate"
	group = "Engineering"
	access = access_ce

/datum/supply_pack/hatton_tube
	contains = list(/obj/item/weapon/hatton_magazine,
	/obj/item/weapon/hatton_magazine,
	/obj/item/weapon/hatton_magazine)
	name = "Hatton gas tubes crate"
	cost = 5000
	containertype = /obj/structure/closet/crate/secure
	group = "Engineering"
	access = access_ce

/datum/supply_pack/shield_gen
	contains = list(/obj/item/weapon/circuitboard/shield_generator)
	name = "Hull shield generator circuitry"
	cost = 5000
	containertype = /obj/structure/closet/crate/secure
	crate_name = "hull shield generator circuitry crate"
	group = "Engineering"

/*/datum/supply_pack/shield_cap
	contains = list(/obj/item/weapon/circuitboard/shield_cap)
	name = "Bubble shield capacitor circuitry"
	cost = 5000
	containertype = /obj/structure/closet/crate/secure
	crate_name = "shield capacitor circuitry crate"
	group = "Engineering"
	*/

/datum/supply_pack/smbig
	name = "Supermatter Core (CAUTION)"
	contains = list(/obj/machinery/power/supermatter)
	cost = 20000
	containertype = /obj/structure/closet/crate/secure/woodseccrate
	crate_name = "Supermatter crate (CAUTION)"
	group = "Engineering"
	access = access_ce

/datum/supply_pack/teg
	contains = list(/obj/machinery/power/generator)
	name = "Mark I Thermoelectric Generator"
	cost = 3000
	containertype = /obj/structure/closet/crate/secure/large
	crate_name = "Mk1 TEG crate"
	group = "Engineering"

/datum/supply_pack/circulator
	contains = list(/obj/machinery/atmospherics/binary/circulator)
	name = "Binary atmospheric circulator"
	cost = 1500
	containertype = /obj/structure/closet/crate/secure/large
	crate_name = "Atmospheric circulator crate"
	group = "Engineering"

/datum/supply_pack/air_dispenser
	contains = list(/obj/machinery/pipedispenser/orderable)
	name = "Pipe Dispenser"
	cost = 900
	containertype = /obj/structure/closet/crate/secure/large
	crate_name = "Pipe Dispenser Crate"
	group = "Engineering"

/datum/supply_pack/disposals_dispenser
	contains = list(/obj/machinery/pipedispenser/disposal/orderable)
	name = "Disposals Pipe Dispenser"
	cost = 900
	containertype = /obj/structure/closet/crate/secure/large
	crate_name = "Disposal Dispenser Crate"
	group = "Engineering"