INCLUDE "macros/code.inc"
INCLUDE "macros/coords.inc"
INCLUDE "macros/scripts/text.inc"
INCLUDE "constants/wram_constants.inc"
INCLUDE "constants/gfx_constants.inc"
INCLUDE "constants/scgb_constants.inc"


SECTION "engine/events/bug_contest/display_stats.asm@DisplayCaughtContestMonStats", ROMX

DisplayCaughtContestMonStats::
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 0
	ld b, 4
	ld c, 13
	call Textbox

	hlcoord 0, 6
	ld b, 4
	ld c, 13
	call Textbox

	hlcoord 2, 0
	ld de, .Stock
	call PlaceString

	hlcoord 2, 6
	ld de, .This
	call PlaceString

	hlcoord 5, 4
	ld de, .Health
	call PlaceString

	hlcoord 5, 10
	ld de, .Health
	call PlaceString

	ld a, [wContestMon]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 2
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wContestMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	ld de, wEnemyMonNick
	hlcoord 1, 8
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wEnemyMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	hlcoord 11, 4
	ld de, wContestMonMaxHP
	lb bc, 2, 3
	call PrintNum

	hlcoord 11, 10
	ld de, wEnemyMonMaxHP
	call PrintNum

	ld hl, ContestAskSwitchText
	call PrintText

	pop af
	ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	ret

.Health:
	db "HEALTH@"
.Stock:
	db " STOCK <PKMN> @"
.This:
	db " THIS <PKMN>  @"

ContestAskSwitchText:
	text_far _ContestAskSwitchText
	text_end


SECTION "engine/events/bug_contest/display_stats.asm@DisplayAlreadyCaughtText", ROMX

DisplayAlreadyCaughtText::
	call GetPokemonName
	ld hl, .ContestAlreadyCaughtText
	jp PrintText

.ContestAlreadyCaughtText:
	text_far _ContestAlreadyCaughtText
	text_end


SECTION "engine/events/bug_contest/display_stats.asm@DummyPredef", ROMX

DummyPredef2F::
DummyPredef38::
DummyPredef39::
	ret
