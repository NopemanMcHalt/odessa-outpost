//This is set of item created to work with Eris stat and perk systems
//The idea here is simple, you find oddities in random spawners, you use them, and they grant you stats, or even perks.
//After use, the object is claimed, and cannot be used by someone else
//If rebalancing is needed, keep in mind spawning rate of those items, it might be good idea to change that as well
//Clockrigger 2019

#define MINIMUM_ODDITY_STAT 2

/obj/item/weapon/oddity
	name = "Oddity"
	desc = "Strange item of uncertain origin."
	icon = 'icons/obj/oddities.dmi'
	icon_state = "gift3"
	item_state = "electronic"
	w_class = ITEM_SIZE_SMALL
	var/claimed = FALSE

//You choose what stat can be increased, and a maximum value that will be added to this stat
//The minimum is defined above. The value of change will be decided by random
//As for perks, the second number in associated list will be a chance to get it
	var/list/oddity_stats
	var/list/oddity_perks


/obj/item/weapon/oddity/attack_self(mob/user as mob)

	if(claimed)
		to_chat(user, SPAN_NOTICE("This item is already someone's inspiration."))
		return FALSE

	if(!ishuman(user))
		to_chat(user, SPAN_NOTICE("There is no value in this item for you"))
		return FALSE

	if(oddity_stats)
		var/chosen_stat = pick(oddity_stats)
		var/stat_change = rand (2, oddity_stats[chosen_stat])
		user.stats.changeStat(chosen_stat, stat_change)
		claim(user)
		to_chat(user, SPAN_NOTICE("Something sparks in your mind as you examine the [initial(name)]. A brief moment of understanding to this item's past granting you insight to a bigger picture. \
									Your [chosen_stat] skill is increased by [stat_change]"))

	if(oddity_perks)
		var/chosen_perk = pick(oddity_perks)
		if(prob (oddity_perks[chosen_perk]))
			var/datum/perk/P = new chosen_perk
			P.teach(user.stats)
			claim(user)
			to_chat(user, SPAN_NOTICE("You are now something more. The abillity [P.name] is avalible for you."))

	return TRUE


/obj/item/weapon/oddity/proc/claim(mob/user as mob)
	if(!claimed)
		claimed = TRUE
		name = "[user.name] [name]"
		return TRUE
	else
		return FALSE


//Oddities are separated into categories depending on their origin. They are meant to be used both in maints and derelicts, so this is important
//This is done by subtypes, because this way even densiest code monkey will not able to misuse them
//They are meant to be put in appropriate random spawners

//Common - you can find those everywhere
/obj/item/weapon/oddity/common/blueprint
	name = "strange blueprint"
	desc = "There's no telling what this design is supposed to be. Whatever could be built from this likely wouldn't work."
	icon_state = "blueprint"
	oddity_stats = list(
		STAT_COG = 5,
		STAT_MEC = 7,
	)

/obj/item/weapon/oddity/common/coin
	name = "strange coin"
	desc = "It appears to be more of a collectible than any sort of actual currency. What metal it's made from seems to be a mystery."
	icon_state = "coin"
	oddity_stats = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
	)

/obj/item/weapon/oddity/common/photo_landscape
	name = "alien landscape photo"
	desc = "There is some ire about the planet in this photograph."
	icon_state = "photo_landscape"
	oddity_stats = list(
		STAT_COG = 5,
		STAT_TGH = 5,
	)

/obj/item/weapon/oddity/common/photo_coridor
	name = "surreal maint photo"
	desc = "The corridor in this photograph looks familiar, though something seems wrong about it; as if everything in it was replaced with an exact replica of itself."
	icon_state = "photo_corridor"
	oddity_stats = list(
		STAT_MEC = 5,
		STAT_TGH = 5,
	)

/obj/item/weapon/oddity/common/photo_eyes
	name = "observer photo"
	desc = "Just looking at this photo sparks a primal fear in your heart."
	icon_state = "photo_corridor"
	oddity_stats = list(
		STAT_ROB = 6,
		STAT_TGH = 6,
		STAT_VIG = 6,
	)

/obj/item/weapon/oddity/common/old_newspaper
	name = "old newspaper"
	desc = "It contains a report on some old and strange phenomenon. Maybe it's lies, maybe it's corporate experements gone wrong."
	icon_state = "old_newspaper"
	oddity_stats = list(
		STAT_MEC = 4,
		STAT_COG = 4,
		STAT_BIO = 4,
	)

/obj/item/weapon/oddity/common/paper_crumpled
	name = "turn-out page"
	desc = "This ALMOST makes sense."
	icon_state = "paper_crumpled"
	oddity_stats = list(
		STAT_MEC = 6,
		STAT_COG = 6,
		STAT_BIO = 6,
	)

/obj/item/weapon/oddity/common/paper_omega
	name = "collection of obscure reports"
	desc = "Even the authors seem to be rather skeptical about their findings. Yet they are not connected to each other, but results are simular."
	icon_state = "paper_omega"
	oddity_stats = list(
		STAT_MEC = 8,
		STAT_COG = 8,
		STAT_BIO = 8,
	)

/obj/item/weapon/oddity/common/book_eyes
	name = "observer book"
	desc = "This book details the information on some cyber creatures. Who did this, how this is even possible?"
	icon_state = "book_eyes"
	oddity_stats = list(
		STAT_ROB = 9,
		STAT_TGH = 9,
		STAT_VIG = 9,
	)

/obj/item/weapon/oddity/common/book_omega
	name = "occult book"
	desc = "Most of the stories in this book seem to be the writing of mad men. But at least the stories are interesting."
	icon_state = "book_omega"
	oddity_stats = list(
		STAT_BIO = 6,
		STAT_ROB = 6,
		STAT_VIG = 6,
	)

/obj/item/weapon/oddity/common/book_bible
	name = "old bible"
	desc = "Oh, how quickly we forgot."
	icon_state = "book_bible"
	oddity_stats = list(
		STAT_ROB = 5,
		STAT_VIG = 5,
	)

/obj/item/weapon/oddity/common/old_money
	name = "old money"
	desc = "It's not like organization that issues this exist now."
	icon_state = "old_money"
	oddity_stats = list(
		STAT_ROB = 4,
		STAT_TGH = 4,
	)

/obj/item/weapon/oddity/common/healthscanner
	name = "odd healthscanner"
	desc = "It's broken and stuck on some really strange readings. Was this even human?"
	icon_state = "healthscanner"
	item_state = "electronic"
	oddity_stats = list(
		STAT_COG = 8,
		STAT_BIO = 8,
	)

/obj/item/weapon/oddity/common/old_pda
	name = "broken pda"
	desc = "An old Nanotrasen era PDA. These were issued to their employees all throughout the galaxy."
	icon_state = "old_pda"
	item_state = "electronic"
	oddity_stats = list(
		STAT_COG = 6,
		STAT_MEC = 6,
	)

/obj/item/weapon/oddity/common/towel
	name = "trustworthy towel"
	desc = "Always have it with you."
	icon_state = "towel"
	oddity_stats = list(
		STAT_ROB = 6,
		STAT_TGH = 6,
	)

/obj/item/weapon/oddity/common/teddy
	name = "teddy bear"
	desc = "He will there for you, im tough times."
	icon_state = "teddy"
	oddity_stats = list(
		STAT_ROB = 7,
		STAT_TGH = 7,
		STAT_VIG = 7,
	)

/obj/item/weapon/oddity/common/old_knife
	name = "old knife"
	desc = "Is this blood older then you? You can't tell, and will never know."
	icon_state = "old_knife"
	structure_damage_factor = STRUCTURE_DAMAGE_BLADE
	tool_qualities = list(QUALITY_CUTTING = 20,  QUALITY_WIRE_CUTTING = 10, QUALITY_SCREW_DRIVING = 5)
	force = WEAPON_FORCE_DANGEROUS
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	slot_flags = SLOT_BELT
	sharp = 1
	edge = 1

	oddity_stats = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_VIG = 5,
	)

/obj/item/weapon/oddity/common/old_id
	name = "old id"
	desc = "There is story behind this name. Untold, and cruel fate."
	icon_state = "old_id"
	oddity_stats = list(
		STAT_VIG = 9,
	)

/obj/item/weapon/oddity/common/old_radio
	name = "old radio"
	desc = "Close your eyes, bring it closer and listen. You can almost hear it, in the edge of your consciousness. The World is ticking."
	icon_state = "old_radio"
	oddity_stats = list(
		STAT_COG = 9,
		STAT_VIG = 9,
	)

/obj/item/weapon/oddity/common/paper_bundle
	name = "paper bundle"
	desc = "Somewhere there, there is a truth, hidden under all of this scrap."
	icon_state = "paper_bundle"
	oddity_stats = list(
		STAT_BIO = 6,
		STAT_ROB = 6,
		STAT_VIG = 6,
	)


#undef MINIMUM_ODDITY_STAT
