INCLUDE "constants/music_common.inc"


SECTION "audio/music/ssaqua.asm", ROMX

Music_SSAqua::
	musicheader 4, 1, Music_SSAqua_Ch1
	musicheader 1, 2, Music_SSAqua_Ch2
	musicheader 1, 3, Music_SSAqua_Ch3
	musicheader 1, 4, Music_SSAqua_Ch4

Music_SSAqua_Ch1:
	tempo 117
	volume $77
	stereopanning $f
	tone $0001
	vibrato $12, $33
	dutycycle $2
	notetype $6, $97
	octave 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
.mainloop:
	octave 2
	note G_, 16
	note __, 8
	note G_, 2
	note __, 2
	notetype $c, $97
	note G_, 2
	note G_, 10
	note __, 4
	notetype $6, $97
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 16
	note __, 8
	note G_, 2
	note __, 2
	notetype $c, $97
	note G_, 2
	note G_, 8
	note __, 8
	dutycycle $1
	intensity $61
	callchannel Music_SSAqua_Ch2.sub4
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	callchannel Music_SSAqua_Ch2.sub4
	callchannel Music_SSAqua_Ch2.sub5
	note __, 16
	note __, 16
	note __, 16
	intensity $97
	note __, 14
	notetype $6, $97
	note D_, 1
	note __, 1
	octave 3
	note A#, 1
	note __, 1
	notetype $c, $97
	note __, 16
	note __, 16
	intensity $95
	note __, 2
	octave 4
	note C_, 1
	note E_, 1
	note G_, 1
	note __, 1
	note E_, 1
	note C_, 1
	octave 3
	note E_, 1
	note C_, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	note E_, 1
	note G_, 1
	octave 5
	note C_, 1
	octave 4
	note E_, 6
	note D_, 2
	note C_, 1
	note D_, 1
	note F#, 1
	note A_, 1
	octave 5
	note C_, 1
	note D_, 1
	octave 4
	note G_, 1
	note F#, 1
	dutycycle $2
	intensity $97
	note G_, 8
	note F#, 8
	note E_, 8
	note D_, 8
	octave 3
	note B_, 8
	note A#, 2
	note __, 2
	note B_, 1
	note __, 1
	octave 4
	note F#, 2
	intensity $75
	octave 5
	note A_, 4
	note F#, 4
	note D_, 4
	octave 4
	note A#, 2
	notetype $6, $97
	note D_, 1
	note __, 1
	octave 3
	note A#, 1
	note __, 1
	intensity $97
	note G_, 16
	note A_, 16
	note B_, 4
	note __, 4
	note B_, 4
	note __, 4
	octave 4
	note E_, 8
	note G_, 8
	note F#, 1
	vibrato $0, $0
	intensity $88
	note G_, 10
	vibrato $2, $23
	intensity $87
	note G_, 9
	vibrato $8, $33
	note C_, 4
	note E_, 4
	note C_, 4
	note D_, 12
	note F#, 12
	note __, 8
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note A_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	note F#, 2
	notetype $c, $97
	note __, 7
	note __, 16
	note __, 16
	note G_, 8
	note F#, 1
	note D_, 1
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 1
	note F#, 1
	note D_, 1
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note D_, 1
	note F#, 1
	note A_, 1
	note D_, 1
	note F#, 1
	note A_, 1
	octave 4
	note D_, 1
	note F#, 1
	note __, 7
	note __, 16
	note __, 2
	note E_, 2
	note G_, 1
	note __, 1
	note E_, 1
	notetype $6, $97
	note __, 1
	note C_, 1
	note C#, 4
	octave 3
	note B_, 2
	note __, 2
	note A_, 3
	note __, 1
	note G_, 2
	note __, 2
	note F#, 2
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note A_, 2
	note F#, 2
	note D_, 2
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note F#, 2
	note A_, 2
	octave 4
	note C_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	loopchannel 0, .mainloop

Music_SSAqua_Ch2:
	stereopanning $f0
	dutycycle $2
	vibrato $8, $33
	notetype $c, $b7
	note __, 2
.mainloop:
	notetype $c, $b7
	dutycycle $1
	intensity $61
	callchannel .sub4
	callchannel .sub5
	dutycycle $2
	intensity $d7
	callchannel .sub3
	note B_, 1
	note __, 1
	note G_, 1
	note __, 3
	octave 3
	note G_, 6
	note G_, 1
	note B_, 1
	octave 4
	note C#, 1
	note E_, 1
	pitchoffset 0, CC
	callchannel .sub3
	pitchoffset 0, C_
	octave 3
	note B_, 1
	note __, 1
	note G_, 1
	note __, 3
	octave 4
	note G_, 6
	note __, 2
	dutycycle $3
	intensity $b7
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	callchannel .sub1
	note G_, 4
	note __, 4
	note G_, 8
	note A_, 8
	note B_, 8
	notetype $c, $b7
	octave 5
	note C_, 10
	note D_, 2
	note C_, 2
	octave 4
	note G_, 2
	note B_, 6
	note A_, 6
	note __, 2
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	callchannel .sub1
	note G_, 4
	note __, 4
	note G_, 8
	note A_, 8
	note B_, 8
	octave 5
	note D#, 1
	vibrato $0, $0
	intensity $98
	note E_, 10
	vibrato $4, $23
	intensity $97
	note E_, 9
	vibrato $8, $23
	note D_, 4
	note C_, 4
	octave 4
	note G_, 4
	note B_, 12
	note A_, 12
	note __, 4
	dutycycle $0
	note B_, 2
	note A_, 2
	callchannel .sub2
	notetype $6, $b7
	note G#, 1
	note A_, 11
	note G_, 2
	note F#, 2
	note G_, 12
	note __, 4
	note __, 4
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note E_, 2
	note __, 2
	note F#, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 16
	note A#, 12
	note B_, 2
	note A_, 2
	callchannel .sub2
	notetype $6, $b7
	note G#, 1
	note A_, 11
	note B_, 4
	note G_, 12
	note __, 4
	note __, 4
	octave 5
	note C_, 4
	note D_, 2
	note __, 2
	note C_, 2
	note __, 1
	octave 4
	note A#, 1
	note B_, 4
	note A_, 2
	note __, 2
	note G_, 4
	note E_, 2
	note __, 2
	note F#, 8
	note G_, 8
	note A_, 8
	note __, 8
	loopchannel 0, .mainloop

.sub1:
	note D_, 6
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	note __, 2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A#, 2
	note __, 2
	note B_, 6
	note F#, 6
	note __, 4
	dutycycle $1
	notetype $6, $b7
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note D_, 1
	note __, 1
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	note D_, 1
	note __, 1
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	note F#, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 4
	note A#, 1
	note __, 1
	note F#, 1
	note __, 1
	note A#, 1
	note __, 1
	note F#, 1
	note __, 1
	dutycycle $3
	note E_, 2
	note F#, 2
	note G_, 12
	note E_, 2
	note F#, 2
	note G_, 4
	note E_, 2
	note F#, 2
	note G_, 4
	note E_, 2
	note F#, 2
	endchannel

.sub2:
	notetype $c, $b7
	note B_, 10
	note F#, 1
	note __, 1
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	endchannel

.sub3:
	octave 3
	note D_, 10
	note E_, 1
	note __, 3
	note D_, 1
	note __, 1
	note C#, 12
	octave 2
	note A_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note C_, 8
	note __, 2
	octave 2
	note B_, 1
	note __, 3
	note A_, 1
	note __, 1
	endchannel

.sub4:
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note G_, 1
	note C#, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note G_, 1
	note C#, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note G_, 1
	note C#, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note G_, 1
	note C#, 1
	octave 4
	note A#, 1
	note G_, 1
	octave 5
	note G_, 1
	note C_, 1
	octave 4
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	note C_, 1
	octave 4
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	note C_, 1
	octave 4
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	note C_, 1
	octave 4
	note A_, 1
	note G_, 1
	endchannel

.sub5:
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	note B_, 1
	note G_, 1
	note C#, 1
	octave 3
	note G_, 1
	endchannel

Music_SSAqua_Ch3:
	stereopanning $ff
	vibrato $8, $34
	notetype $6, $15
	octave 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
.mainloop:
	note G_, 16
	note __, 8
	note G_, 2
	note __, 2
	notetype $c, $15
	note G_, 2
	note G_, 10
	note __, 4
	notetype $6, $15
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 16
	note __, 8
	note G_, 2
	note __, 2
	notetype $c, $15
	note G_, 2
	note G_, 8
	note B_, 1
	octave 3
	note C#, 1
	note D_, 1
	note G_, 1
	note D_, 1
	note G_, 1
	note B_, 1
	octave 4
	note E_, 1
	callchannel .sub1
	callchannel .sub1
.loop1:
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	loopchannel 4, .loop1
	callchannel .sub2
	callchannel .sub2
	callchannel .sub3
	octave 3
	note E_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 3
	note D#, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note D_, 1
	note __, 3
	octave 3
	note D#, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C#, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C#, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	callchannel .sub3
	octave 3
	note E_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 3
	note E_, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C#, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note C#, 1
	note __, 3
	octave 3
	note C_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note C_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note C#, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note C#, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	loopchannel 0, .mainloop

.sub1:
	notetype $6, $15
	octave 2
	note G_, 2
	note __, 6
	note G_, 2
	note __, 6
	note G_, 2
	note __, 2
	octave 3
	note G_, 2
	note __, 2
	octave 2
	note G_, 2
	note __, 4
	note G_, 1
	note __, 1
	note G_, 2
	note __, 6
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 3
	note G_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 4
	note G_, 1
	note __, 1
	endchannel

.sub2:
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note D_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note D_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	note G_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note G_, 2
	note __, 2
	octave 4
	note G_, 4
	note F#, 4
	note E_, 2
	note __, 2
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note A#, 1
	note __, 3
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note A#, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 3
	note A_, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 3
	note A_, 1
	note __, 3
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note A#, 1
	note __, 3
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note A#, 1
	note __, 1
	note D#, 1
	note __, 1
	note E_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 3
	note E_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 3
	note D#, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	octave 3
	note D#, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	note D_, 2
	note __, 2
	octave 4
	note D_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note D_, 1
	note __, 3
	octave 3
	note C#, 2
	note __, 2
	octave 4
	note B_, 4
	note G_, 4
	note E_, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note C_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 2
	note A_, 2
	note __, 2
	octave 4
	note E_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note G_, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note D_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	endchannel

.sub3:
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note F#, 1
	note __, 3
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	octave 2
	note B_, 2
	note __, 2
	octave 4
	note D#, 1
	note __, 3
	endchannel

Music_SSAqua_Ch4:
	togglenoise $3
	notetype $c
	note __, 2
.mainloop:
.loop1:
	note G#, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G#, 1
	note G_, 1
	loopchannel 12, .loop1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub2
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub2
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub2
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub3
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub2
	callchannel .sub1
	callchannel .sub1
	callchannel .sub1
	callchannel .sub3
	loopchannel 0, .mainloop

.sub1:
	note A#, 2
	note G_, 1
	note G_, 1
	note D_, 2
	note G_, 1
	note G_, 1
	note A#, 2
	note G_, 1
	note G_, 1
	note D_, 2
	note G_, 1
	note G_, 1
	endchannel

.sub2:
	note A#, 2
	note G_, 1
	note G_, 1
	note D_, 2
	note G_, 1
	note G_, 1
	note A#, 2
	note G_, 1
	note G_, 1
	note D_, 2
	note F#, 2
	endchannel

.sub3:
	note A#, 2
	note G_, 1
	note G_, 1
	note D_, 2
	note G_, 1
	note G_, 1
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note C_, 2
	endchannel
