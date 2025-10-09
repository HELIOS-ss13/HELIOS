/obj/item/organ/mushroom_cap
	icon_state = "random_fly_1"

	mutantpart_key = "caps"
	mutantpart_info = list(MUTANT_INDEX_NAME = "Round", MUTANT_INDEX_COLOR_LIST = list("#FF4B19"))
	slot = ORGAN_SLOT_EXTERNAL_CAP
	organ_flags = ORGAN_EXTERNAL

/obj/item/organ/mushroom_cap/Initialize(mapload)
	if(!ispath(bodypart_overlay))
		mutantpart_info[MUTANT_INDEX_COLOR_LIST] = bodypart_overlay.draw_color
	return ..()

/datum/bodypart_overlay/mutant/mushroom_cap
	color_source = ORGAN_COLOR_OVERRIDE

/datum/bodypart_overlay/mutant/mushroom_cap/get_global_feature_list()
	return SSaccessories.sprite_accessories["caps"]

/datum/bodypart_overlay/mutant/mushroom_cap/can_draw_on_bodypart(obj/item/bodypart/bodypart_owner)
	var/mob/living/carbon/human/human = bodypart_owner.owner
	if(!human)
		return TRUE
	return !sprite_datum.is_hidden(human)
