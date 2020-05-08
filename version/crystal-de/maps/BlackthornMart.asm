INCLUDE "constants/maps_common.inc"

	object_const_def ; object_event constants
	const BLACKTHORNMART_CLERK
	const BLACKTHORNMART_COOLTRAINER_M
	const BLACKTHORNMART_BLACK_BELT


SECTION "maps/BlackthornMart", ROMX

BlackthornMart_MapScripts::
	db 0 ; scene scripts

	db 0 ; callbacks

BlackthornMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_BLACKTHORN
	closetext
	end

BlackthornMartCooltrainerMScript:
	jumptextfaceplayer BlackthornMartCooltrainerMText

BlackthornMartBlackBeltScript:
	jumptextfaceplayer BlackthornMartBlackBeltText

BlackthornMartCooltrainerMText:
	text "Du kannst TOP-BE-"
	line "LEBER zwar nicht"

	para "kaufen, aber er"
	line "füllt die KP be-"
	cont "siegter #MON"

	para "wieder vollständig"
	line "auf."

	para "Vorsicht! Die AP,"
	line "oder ANGRIFFSPUNK-"
	cont "TE, werden nicht"
	cont "aufgefüllt."
	done

BlackthornMartBlackBeltText:
	text "TOP-SCHUTZ hält"
	line "dir schwache #-"
	cont "MON vom Leib."

	para "Von allen SCHUTZ-"
	line "Sprays hält es am"
	cont "längsten an."
	done

BlackthornMart_MapEvents::
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMartBlackBeltScript, -1
