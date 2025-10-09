/obj/effect/spawner/random/trash/food_packaging/Initialize(mapload)
	. = ..()
	for(var/path in list(
		/obj/item/trash/can/food/tuna = 1,
	))
		loot[path] = list[path]
