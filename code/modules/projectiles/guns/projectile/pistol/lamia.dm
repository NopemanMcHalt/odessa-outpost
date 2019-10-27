/obj/item/weapon/gun/projectile/lamia
	name = "FS HG .44 \"Lamia\""
	desc = "FS HG .44 \"Lamia\", a heavy pistol of Ironhammer enforcers. Uses .44 rounds."
	icon_state = "lamia"
	item_state = "lamia"
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	caliber = ".44"
	ammo_mag = "mag_cl44"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 4)
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	auto_eject = 0
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 1800
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	unload_sound 	= 'sound/weapons/guns/interact/hpistol_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/hpistol_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/hpistol_cock.ogg'
	recoil = 0.8 //high caliber pistol recoil

/obj/item/weapon/gun/projectile/lamia/update_icon()
	..()

	if(!ammo_magazine)
		icon_state = initial(icon_state)
	else if(!ammo_magazine.stored_ammo.len)
		icon_state = initial(icon_state) + "_empty"
	else
		icon_state = initial(icon_state) + "_full"

/obj/item/weapon/gun/projectile/lamia/scoped_lamia
	name = "FS HG .44 \"Lamia\" Advanced"
	desc = "FS HG .44 \"Lamia\", a heavy pistol of Ironhammer enforcers, fitted with a smart-linked optic and stabilizer. Uses .44 rounds."
	icon_state = "scoped_lamia"
	item_state = "scoped_lamia"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10, MATERIAL_GLASS = 5, MATERIAL_SILVER = 5)
	auto_eject = 1
	zoom_factor = 0.4
	recoil = 0.7
	price_tag = 2500