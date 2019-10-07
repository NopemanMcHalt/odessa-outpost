/*
 * Welding mask
 */
/obj/item/clothing/head/welding
	name = "welding helmet"
	desc = "A head-mounted face cover designed to protect the wearer completely from space-arc eye."
	icon_state = "welding"
	item_state_slots = list(
		slot_l_hand_str = "welding",
		slot_r_hand_str = "welding",
		)
	matter = list(MATERIAL_STEEL = 4, MATERIAL_GLASS = 2)
	var/up = 0
	armor = list(melee = 40, bullet = 30, energy = 30, bomb = 0, bio = 0, rad = 0)
	flags_inv = (HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
	body_parts_covered = HEAD|FACE|EYES
	action_button_name = "Flip Welding Mask"
	siemens_coefficient = 0.9
	w_class = ITEM_SIZE_NORMAL
	var/base_state
	flash_protection = FLASH_PROTECTION_MAJOR
	tint = TINT_HEAVY

/obj/item/clothing/head/welding/attack_self()
	if(!base_state)
		base_state = icon_state
	toggle()


/obj/item/clothing/head/welding/verb/toggle()
	set category = "Object"
	set name = "Adjust Welding Mask"
	set src in usr

	if(!usr.incapacitated())
		if(src.up)
			src.up = !src.up
			body_parts_covered |= (EYES|FACE)
			flags_inv |= (HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
			flash_protection = initial(flash_protection)
			tint = initial(tint)
			icon_state = base_state
			to_chat(usr, "You flip the [src] down to protect your eyes.")
		else
			src.up = !src.up
			body_parts_covered &= ~(EYES|FACE)
			flash_protection = FLASH_PROTECTION_NONE
			tint = TINT_NONE
			flags_inv &= ~(HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
			icon_state = "[base_state]up"
			to_chat(usr, "You push the [src] up out of your face.")
		update_wear_icon()	//so our mob-overlays
		usr.update_action_buttons()

/obj/item/clothing/head/welding/demon
	name = "demonic welding helmet"
	desc = "A welding helmet painted to resemble a demonic face."
	icon_state = "demonwelding"
	item_state_slots = list(
		slot_l_hand_str = "demonwelding",
		slot_r_hand_str = "demonwelding",
		)

/obj/item/clothing/head/welding/knight
	name = "knightly welding helmet"
	desc = "A welding helmet painted to resemble a medieval knight."
	icon_state = "knightwelding"
	item_state_slots = list(
		slot_l_hand_str = "knightwelding",
		slot_r_hand_str = "knightwelding",
		)

/obj/item/clothing/head/welding/fancy
	name = "fancy welding helmet"
	desc = "A welding helmet painted in fancy black and gold colors."
	icon_state = "fancywelding"
	item_state_slots = list(
		slot_l_hand_str = "fancywelding",
		slot_r_hand_str = "fancywelding",
		)

/obj/item/clothing/head/welding/technomancer
	name = "technomancer welding helmet"
	desc = "A welding helmet painted in technomancer colors."
	icon_state = "engiewelding"
	item_state_slots = list(
		slot_l_hand_str = "engiewelding",
		slot_r_hand_str = "engiewelding",
		)

/obj/item/clothing/head/welding/flame
	name = "flame welding helmet"
	desc = "A welding helmet painted with vivid flames and fire."
	icon_state = "alice_mccrea_1"
	item_state_slots = list(
		slot_l_hand_str = "alice_mccrea_1",
		slot_r_hand_str = "alice_mccrea_1",
		)

/obj/item/clothing/head/welding/ghetto
	name = "ghetto welding helmet"
	desc = "A welding helmet painted white with a graffiti tag."
	icon_state = "yuki_matsuda_1"
	item_state_slots = list(
		slot_l_hand_str = "yuki_matsuda_1",
		slot_r_hand_str = "yuki_matsuda_1",
		)

/obj/item/clothing/head/welding/aquatic
	name = "aquatic welding helmet"
	desc = "A welding helmet painting in an underwater blue theme."
	icon_state = "norah_briggs_1"
	item_state_slots = list(
		slot_l_hand_str = "norah_briggs_1",
		slot_r_hand_str = "norah_briggs1",
		)

/*
 * Ushanka
 */
/obj/item/clothing/head/ushanka
	name = "ushanka"
	desc = "A warm fur cap with ear flaps."
	icon_state = "ushankadown"
	flags_inv = HIDEEARS

/obj/item/clothing/head/ushanka/attack_self(mob/user as mob)
	if(src.icon_state == "ushankadown")
		src.icon_state = "ushankaup"
		to_chat(user, "You raise the ear flaps on the ushanka.")
	else
		src.icon_state = "ushankadown"
		to_chat(user, "You lower the ear flaps on the ushanka.")

/*
 * Pumpkin head
 */
/obj/item/clothing/head/pumpkinhead
	name = "carved pumpkin"
	desc = "A jack o' lantern! Believed to ward off evil spirits."
	icon_state = "hardhat0_pumpkin"//Could stand to be renamed
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	brightness_on = 2
	light_overlay = "helmet_light"
	w_class = ITEM_SIZE_NORMAL

/*
 * Kitty ears
 */
/obj/item/clothing/head/kitty
	name = "kitty ears"
	desc = "A pair of kitty ears. Meow!"
	icon_state = "kitty"
	body_parts_covered = 0
	siemens_coefficient = 1.5
	item_icons = list()

/obj/item/clothing/head/kitty/equipped(mob/user, slot)
	if(slot == slot_head)
		update_icon(user)
	..()

/obj/item/clothing/head/kitty/update_icon(var/mob/living/carbon/human/user)
	if(!istype(user))
		return
	var/icon/ears = new/icon('icons/inventory/head/mob.dmi', "kitty")
	ears.Blend(user.hair_color, ICON_ADD)

	var/icon/earbit = new/icon('icons/inventory/head/mob.dmi', "kittyinner")
	ears.Blend(earbit, ICON_OVERLAY)

/obj/item/clothing/head/richard
	name = "chicken mask"
	desc = "You can hear the distant sounds of rhythmic electronica."
	icon_state = "richard"
	body_parts_covered = HEAD|FACE
	flags_inv = BLOCKHAIR

/*
 * SiCC Helmet
 */
/obj/item/clothing/head/helmet/handmade/sicc
	name = "SiCC helmet"
	desc = "A heavy helmet of uncertain quality with gasmask attached. Bulky, uncomfortable and very heavy but gives best protection."
	armor = list(melee = 45, bullet = 35, energy = 5, bomb = 15, bio = 2, rad = 0)
	icon_state = "sicc_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EARS|EYES
	siemens_coefficient = 0.7
	price_tag = 100
	var/obj/item/clothing/mask/gas/mask
	var/masktype = /obj/item/clothing/mask/gas

// Adds mask to helmet.
/obj/item/clothing/head/helmet/handmade/sicc/New()
	MakeMask()
	..()

/obj/item/clothing/head/helmet/handmade/sicc/Destroy()
	qdel(mask)
	return ..()

/obj/item/clothing/head/helmet/handmade/sicc/proc/MakeMask()
	if(!mask && masktype)
		mask = new masktype(src)

/obj/item/clothing/head/helmet/handmade/sicc/pre_equip(mob/M)
	..()

	var/mob/living/carbon/human/H = M

	if(is_held())
		if(H.wear_mask)
			H << SPAN_DANGER("You cannot put helmet on as \the [H.wear_mask] obstructs built-in mask.")
			return 1
		else if(!H.wear_mask)
			return 0

/obj/item/clothing/head/helmet/handmade/sicc/equipped(mob/M)
	..()

	if (is_held())
		retract()

	var/mob/living/carbon/human/H = M

	if(!istype(H)) return

	if(H.head != src)
		return

	if (H.equip_to_slot_if_possible(mask, slot_wear_mask))
		mask.canremove = 0

/obj/item/clothing/head/helmet/handmade/sicc/dropped()
	..()
	retract()

/obj/item/clothing/head/helmet/handmade/sicc/proc/retract()
	var/mob/living/carbon/human/H

	if(mask)
		H = mask.loc
		if(istype(H))
			if(mask && H.wear_mask == mask)
				H.drop_from_inventory(mask)
				mask.forceMove(src)
				if(mask.overslot)
					mask.remove_overslot_contents(H)
// Special code end.
