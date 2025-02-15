/decl/hierarchy/outfit/job/science
	hierarchy_type = /decl/hierarchy/outfit/job/science
	l_ear = /obj/item/device/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/scientist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science
	shoes = /obj/item/clothing/shoes/jackboots
	pda_type = /obj/item/modular_computer/pda/moebius/science
	id_type = /obj/item/weapon/card/id/sci

/decl/hierarchy/outfit/job/science/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/science/rd
	name = OUTFIT_JOB_NAME("Moebius Expedition Overseer")
	l_ear = /obj/item/device/radio/headset/heads/rd
	shoes = /obj/item/clothing/shoes/reinforced
	uniform = /obj/item/clothing/under/rank/expedition_overseer
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/rd
	pda_type = /obj/item/modular_computer/pda/heads/rd

/decl/hierarchy/outfit/job/science/scientist
	name = OUTFIT_JOB_NAME("Moebius Scientist")

/decl/hierarchy/outfit/job/science/xenobiologist
	name = OUTFIT_JOB_NAME("Moebius Xenobiologist")

/decl/hierarchy/outfit/job/science/roboticist
	name = OUTFIT_JOB_NAME("Moebius Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/rank/robotech_jacket
	belt = /obj/item/weapon/storage/belt/utility/full
	pda_slot = slot_r_store
	id_type = /obj/item/weapon/card/id/dkgrey
	pda_type = /obj/item/modular_computer/pda/roboticist
	l_hand = /obj/item/weapon/storage/toolbox/mechanical

/decl/hierarchy/outfit/job/science/roboticist/New()
	..()
	backpack_overrides.Cut()
