INCLUDE "macros/code.inc"
INCLUDE "macros/coords.inc"
INCLUDE "macros/scripts/text.inc"
INCLUDE "constants/scgb_constants.inc"
INCLUDE "constants/text_constants.inc"


SECTION "engine/events/diploma", ROMX

_Diploma::
	call PlaceDiplomaOnScreen
	call WaitPressAorB_BlinkCursor
	ret

PlaceDiplomaOnScreen::
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call DisableLCD
	ld hl, DiplomaGFX
	ld de, vTiles2
	call Decompress
	ld hl, DiplomaPage1Tilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyBytes
	ld de, .Player
	hlcoord 2, 5
	call PlaceString
if !DEF(_CRYSTAL_EU)
	ld de, .EmptyString
	hlcoord 15, 5
	call PlaceString
	ld de, wPlayerName
	hlcoord 9, 5
	call PlaceString
else
	ld de, wPlayerName
	ld h, b
	ld l, c
	inc hl
	call PlaceString
endc
	ld de, .Certification
	hlcoord 2, 8
	call PlaceString
	call EnableLCD
	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	call DelayFrame
	ret

.Player:
if !DEF(_CRYSTAL_EU)
	db "PLAYER@"
elif DEF(_CRYSTAL_DE)
	db "TRAINER@"
elif DEF(_CRYSTAL_ES)
	db "JUGADOR@"
endc

.EmptyString:
	db "@"

.Certification:
if !DEF(_CRYSTAL_EU)
	db   "This certifies"
	next "that you have"
	next "completed the"
	next "new #DEX."
	next "Congratulations!@"
elif DEF(_CRYSTAL_DE)
	db   "Bestätigung über"
	next "einen kompletten"
	next "neuen #DEX."
	next "Gratulation!@"
elif DEF(_CRYSTAL_ES)
	db   "Esto certifica"
	next "que has"
	next "completado la"
	next "nueva #DEX."
	next "¡Enhorabuena!@"
endc

PrintDiplomaPage2::
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $7f
	call ByteFill
	ld hl, DiplomaPage2Tilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyBytes
	ld de, .GameFreak
	hlcoord 8, 0
	call PlaceString
	ld de, .PlayTime
if !DEF(_CRYSTAL_ES)
	hlcoord 3, 15
else
	hlcoord 3, 14
endc
	call PlaceString
	hlcoord 12, 15
	ld de, wGameTimeHours
	lb bc, 2, 4
	call PrintNum
	ld [hl], $67 ; colon
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret

if !DEF(_CRYSTAL_EU)
.PlayTime: db "PLAY TIME@"
elif DEF(_CRYSTAL_DE)
.PlayTime: db "SPIELZEIT@"
elif DEF(_CRYSTAL_ES)
.PlayTime: db "TIEMPO J.@"
endc
.GameFreak: db "GAME FREAK@"

DiplomaGFX:
INCBIN "gfx/diploma/diploma.2bpp.lz"

DiplomaPage1Tilemap:
INCBIN "gfx/diploma/page1.tilemap"

DiplomaPage2Tilemap:
INCBIN "gfx/diploma/page2.tilemap"

	ret ; unused
