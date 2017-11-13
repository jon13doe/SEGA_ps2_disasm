
; =====================================================================
; Enemy Data
;
; bytes 1-30 = palettes
; bytes 31-34 = pointer to enemy art
; bytes 35-36 = Experience Points
; bytes 37-38 = Meseta
; bytes 39-40 = Attack
; bytes 41-42 = Defense
; byte 43 = type of enemy - bitfield - bit 5 = biomonster; bit 6 = Robot (enemies in Dezolis dungeons and on Noah have both bits set, meaning that both Hugh's and Kain's techniques work!)
; byte 44 = Agility
; bytes 45-46 = HP
; byte 47 = Index of technique to use (0 means no technique) - The index determines the entry in the EnemyTechniqueTable
; byte 48 = Chances of technique (if any) use
; byte 49 = Index in the EnemyTechSuccessRate table which determines hit rate for the technique
; byte 50 = Escape rate - The higher the number the higher the chances of escape
; byte 51 = initial object properties like if it's visible, etc...
; byte 52 = animation duration; the lower the number the faster the animation
; byte 57 = sound id used when attacking
; byte 58 = sound id used when using techniques
; bytes 59-62 = Enemy sprite mappings
; byte 63 = Enemy ID
; byte 64 = Enemy ID copy?
; =====================================================================
EnemyData:

Enemy_FireAnt:
	dc.w	$68C, $46A, $248, $26, 4, 2, 0, $6A6, $484, $240, $8AA, $688, $466, $244, 0
	dc.l	Battle_AntArt
	dc.w	3		; 3 EXP
	dc.w	5		; 5 MESETA
	dc.w	3		; 3 ATTACK
	dc.w	4		; 4 DEFENSE
	dc.b	$20		; BIOMONSTER
	dc.b	$17		; 23 AGILITY
	dc.w	9		; 9 HP
	dc.b	0		; No techniques
	dc.b	0		; 0% chances as we have no techniques to choose from
	dc.b	0		; Technique success rate index
	dc.b	$B2		; 70% escape rate
	dc.b	$0F
	dc.b	$03		; animation duration
	dc.b	$6C
	dc.b	$00
	dc.b	$6C
	dc.b	$00
	dc.b	SFXID_FireAntAttack		; sound when attacking
	dc.b	SFXID_Whip		; sound when using techniques
	dc.l	Battle_AntMap
	dc.b	$01		; Enemy ID = 1
	dc.b	$01		; Enemy ID copy = 1?

Enemy_ArmorAnt:
	dc.w	$08E8, $06A6, $0484, $0262, $0240, $0020, $0000, $006E, $004E, $002A, $0A8A, $0868, $0646, $0424, $0000 ;0x0 (0x000240DA-0x000240F8, Entry count: 0x0000001E)
	dc.l	Battle_AntArt
	dc.w	$001A, $0022, $000C, $0010 ;0x0 (0x000240FC-0x00024104, Entry count: 0x00000008)
	dc.b	$20, $30, $00, $17, $03, $4C, $04, $B2 ;0x0 (0x00024104-0x0002410C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$02, $02

Enemy_PinchAnt:
	dc.w	$0CCA, $0AA8, $0886, $0664, $0442, $0220, $0000, $086E, $030C, $0308, $068C, $046A, $0248, $0226, $0000 ;0x0 (0x0002411A-0x00024138, Entry count: 0x0000001E)
	dc.l	Battle_AntArt
	dc.w	$0053, $0063, $001E, $001B ;0x0 (0x0002413C-0x00024144, Entry count: 0x00000008)
	dc.b	$20, $41, $00, $2D, $E2, $66, $08, $99 ;0x0 (0x00024144-0x0002414C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $64, $0C
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$03, $03

Enemy_Mosquito:
	dc.w	$0000, $0020, $0064, $0086, $00A8, $00EC, $0204, $0428, $066C, $0802, $0C06, $0000, $0888, $0EEE, $0000 ;0x0 (0x0002415A-0x00024178, Entry count: 0x0000001E)
	dc.l	Battle_MosquitoArt
	dc.w	$0003, $0005, $0002, $0004 ;0x0 (0x0002417C-0x00024184, Entry count: 0x00000008)
	dc.b	$20, $17, $00, $09, $06, $FF, $00, $99 ;0x0 (0x00024184-0x0002418C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $64, $0C
	dc.b	SFXID_MosquitoAttack, SFXID_MosquitoAttack
	dc.l	Battle_MosquitoMap
	dc.b	$04, $04

Enemy_Waspy:
	dc.w	$0000, $0024, $0066, $028A, $04AC, $08EE, $0040, $0262, $06C6, $0620, $0862, $0000, $0488, $0CEE, $0000 ;0x0 (0x0002419A-0x000241B8, Entry count: 0x0000001E)
	dc.l	Battle_MosquitoArt
	dc.w	$000F, $001B, $000D, $000D ;0x0 (0x000241BC-0x000241C4, Entry count: 0x00000008)
	dc.b	$20, $24, $00, $12, $06, $FF, $00, $7F ;0x0 (0x000241C4-0x000241CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_MosquitoAttack, SFXID_MosquitoAttack
	dc.l	Battle_MosquitoMap
	dc.b	$05, $05

Enemy_Stinger:
	dc.w	$0000, $0220, $0664, $0886, $0AA8, $0EEC, $0604, $0A26, $0A6C, $0408, $060C, $0000, $0864, $0ECA, $0000 ;0x0 (0x000241DA-0x000241F8, Entry count: 0x0000001E)
	dc.l	Battle_MosquitoArt
	dc.w	$004E, $0063, $001F, $001A ;0x0 (0x000241FC-0x00024204, Entry count: 0x00000008)
	dc.b	$20, $3A, $00, $2F, $06, $FF, $00, $66 ;0x0 (0x00024204-0x0002420C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_MosquitoAttack, SFXID_MosquitoAttack
	dc.l	Battle_MosquitoMap
	dc.b	$06, $06

Enemy_Spinner:
	dc.w	$0EEE, $0EAC, $0C8A, $0A68, $0846, $0624, $0402, $06EE, $00EE, $02CE, $009E, $0220, $0440, $0660, $0000 ;0x0 (0x0002421A-0x00024238, Entry count: 0x0000001E)
	dc.l	Battle_SpinnerArt
	dc.w	$0007, $0010, $0009, $000A ;0x0 (0x0002423C-0x00024244, Entry count: 0x00000008)
	dc.b	$20, $10, $00, $0E, $00, $00, $00, $33 ;0x0 (0x00024244-0x0002424C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $7C, $00, $7C, $00
	dc.b	SFXID_SpinnerAttack, SFXID_SpinnerAttack
	dc.l	Battle_SpinnerMap
	dc.b	$07, $07

Enemy_Vortex:
	dc.w	$0EEE, $0AEA, $08C8, $06A6, $0484, $0262, $0040, $004E, $000E, $000C, $000A, $0220, $0440, $0660, $0000 ;0x0 (0x0002425A-0x00024278, Entry count: 0x0000001E)
	dc.l	Battle_SpinnerArt
	dc.w	$0028, $004D, $001D, $0017 ;0x0 (0x0002427C-0x00024284, Entry count: 0x00000008)
	dc.b	$20, $12, $00, $25, $11, $33, $08, $4C ;0x0 (0x00024284-0x0002428C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $7C, $00, $7C, $00
	dc.b	SFXID_SpinnerAttack, SFXID_SpinnerAttack
	dc.l	Battle_SpinnerMap
	dc.b	$08, $08

Enemy_Whirly:
	dc.w	$0EEE, $0CCE, $0AAE, $088E, $066E, $024E, $000C, $0AEA, $06C6, $0484, $0060, $0220, $0440, $0660, $0000 ;0x0 (0x0002429A-0x000242B8, Entry count: 0x0000001E)
	dc.l	Battle_SpinnerArt
	dc.w	$009C, $00B8, $0030, $0027 ;0x0 (0x000242BC-0x000242C4, Entry count: 0x00000008)
	dc.b	$20, $1C, $00, $4C, $09, $66, $00, $33 ;0x0 (0x000242C4-0x000242CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $7C, $00, $7C, $00
	dc.b	SFXID_SpinnerAttack, SFXID_SpinnerAttack
	dc.l	Battle_SpinnerMap
	dc.b	$09, $09

Enemy_Bee:
	dc.w	$0000, $0240, $0682, $0AC6, $0ECC, $0EEE, $000C, $0006, $0204, $0406, $082A, $0222, $0666, $0AAA, $0A8C ;0x0 (0x000242DA-0x000242F8, Entry count: 0x0000001E)
	dc.l	Battle_BeeArt
	dc.w	$0005, $0009, $0004, $0007 ;0x0 (0x000242FC-0x00024304, Entry count: 0x00000008)
	dc.b	$20, $19, $00, $0A, $00, $00, $00, $B2 ;0x0 (0x00024304-0x0002430C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $74, $00, $74, $00
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_BeeMap
	dc.b	$0A, $0A

Enemy_Buzzer:
	dc.w	$0000, $0226, $066A, $08AC, $0CCE, $0EEE, $0864, $0620, $0402, $0644, $0A68, $0222, $0666, $0AAA, $0C8A ;0x0 (0x0002431A-0x00024338, Entry count: 0x0000001E)
	dc.l	Battle_BeeArt
	dc.w	$001A, $0022, $0011, $000F ;0x0 (0x0002433C-0x00024344, Entry count: 0x00000008)
	dc.b	$20, $27, $00, $1B, $00, $00, $00, $CC ;0x0 (0x00024344-0x0002434C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $74, $00, $74, $00
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_BeeMap
	dc.b	$0B, $0B

Enemy_Insecta:
	dc.w	$0000, $0244, $0688, $08CC, $0CEE, $0EEE, $044A, $0206, $0242, $0464, $0686, $0222, $0666, $0AAA, $0AEA ;0x0 (0x0002435A-0x00024378, Entry count: 0x0000001E)
	dc.l	Battle_BeeArt
	dc.w	$006F, $008B, $0029, $001F ;0x0 (0x0002437C-0x00024384, Entry count: 0x00000008)
	dc.b	$20, $42, $00, $3C, $00, $00, $00, $B2 ;0x0 (0x00024384-0x0002438C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $74, $00, $74, $00
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_BeeMap
	dc.b	$0C, $0C

Enemy_Poisoner:
	dc.w	$0CCE, $08CA, $06A8, $0486, $0264, $0042, $006E, $0CCC, $0AAA, $0888, $0666, $0444, $0AAE, $066A, $0226 ;0x0 (0x0002439A-0x000243B8, Entry count: 0x0000001E)
	dc.l	Battle_PoisonerArt
	dc.w	$0005, $0013, $0004, $0002 ;0x0 (0x000243BC-0x000243C4, Entry count: 0x00000008)
	dc.b	$20, $19, $00, $0C, $03, $66, $0C, $B2 ;0x0 (0x000243C4-0x000243CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_FireAntAttack, SFXID_AmoebaAttack
	dc.l	Battle_PoisonerMap
	dc.b	$0D, $0D

Enemy_Spitkill:
	dc.w	$0EEE, $0CA8, $0A86, $0864, $0642, $0420, $006E, $0ACC, $08AA, $0688, $0466, $0244, $0AAE, $066A, $0226 ;0x0 (0x000243DA-0x000243F8, Entry count: 0x0000001E)
	dc.l	Battle_PoisonerArt
	dc.w	$001F, $0033, $0012, $000D ;0x0 (0x000243FC-0x00024404, Entry count: 0x00000008)
	dc.b	$20, $2A, $00, $1E, $05, $33, $18, $99 ;0x0 (0x00024404-0x0002440C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_FireAntAttack, SFXID_AmoebaAttack
	dc.l	Battle_PoisonerMap
	dc.b	$0E, $0E

Enemy_Spitfang:
	dc.b	$0E, $AE, $0C, $8C, $0A, $6A, $08, $48, $06, $26, $04, $04, $00, $80, $0A, $A8
	dc.b	$08, $86, $06, $64, $04, $42, $02, $20, $0A, $AE, $06, $6A, $02, $26 ;0x0 (0x0002441A-0x00024438, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_PoisonerArt
	dc.b	$00, $B6, $00, $C2, $00, $31, $00, $1C, $20, $4A, $00, $42, $04, $33, $0C, $99
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_FireAntAttack, SFXID_AmoebaAttack
	dc.l	Battle_PoisonerMap
	dc.b	$0F, $0F

Enemy_HitTail:
	dc.w	$0224, $0226, $0448, $066A, $0AAD, $0EEE, $0666, $0688, $0000, $0204, $0406, $060A, $0620, $0A60, $0000 ;0x0 (0x0002445A-0x00024478, Entry count: 0x0000001E)
	dc.l	Battle_HitTailArt
	dc.w	$0031, $0058, $0020, $0018 ;0x0 (0x0002447C-0x00024484, Entry count: 0x00000008)
	dc.b	$20, $23, $00, $16, $00, $00, $00, $33 ;0x0 (0x00024484-0x0002448C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $15, $58, $15
	dc.b	SFXID_FireAntAttack, SFXID_VanAttack
	dc.l	Battle_HitTailMap
	dc.b	$10, $10

Enemy_Center:
	dc.w	$0024, $0246, $0468, $068A, $08AC, $0AEE, $0446, $0E20, $0EA0, $0420, $0864, $0CA8, $000E, $008E, $0000 ;0x0 (0x0002449A-0x000244B8, Entry count: 0x0000001E)
	dc.l	Battle_HitTailArt
	dc.w	$007F, $008B, $0030, $001F ;0x0 (0x000244BC-0x000244C4, Entry count: 0x00000008)
	dc.b	$20, $2E, $00, $2A, $EB, $7F, $0C, $19 ;0x0 (0x000244C4-0x000244CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $15, $59, $15
	dc.b	SFXID_FireAntAttack, SFXID_VanAttack
	dc.l	Battle_HitTailMap
	dc.b	$11, $11

Enemy_Scaly:
	dc.w	$0222, $0444, $0666, $0AAA, $0CCC, $0EEE, $0664, $004E, $00CE, $0044, $0088, $00CC, $0006, $060E, $0000 ;0x0 (0x000244DA-0x000244F8, Entry count: 0x0000001E)
	dc.l	Battle_HitTailArt
	dc.w	$0165, $0151, $004B, $0030 ;0x0 (0x000244FC-0x00024504, Entry count: 0x00000008)
	dc.b	$20, $4C, $00, $5B, $E7, $33, $04, $19 ;0x0 (0x00024504-0x0002450C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $15, $59, $15
	dc.b	SFXID_FireAntAttack, SFXID_VanAttack
	dc.l	Battle_HitTailMap
	dc.b	$12, $12

Enemy_Froggy:
	dc.w	$0CE0, $0AC0, $08A0, $0680, $0460, $0240, $0020, $0022, $0044, $0066, $00CC, $020E, $020A, $0206, $0000 ;0x0 (0x0002451A-0x00024538, Entry count: 0x0000001E)
	dc.l	Battle_FroggyArt
	dc.w	$0007, $000A, $0005, $0007 ;0x0 (0x0002453C-0x00024544, Entry count: 0x00000008)
	dc.b	$20, $30, $00, $0C, $F5, $4C, $0C, $33 ;0x0 (0x00024544-0x0002454C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_FireAntAttack, SFXID_MosquitoAttack
	dc.l	Battle_FroggyMap
	dc.b	$13, $13

Enemy_Toader:
	dc.w	$0E0A, $0C08, $0A06, $0804, $0602, $0400, $0200, $0240, $0460, $08A0, $0AC0, $020E, $020A, $0206, $0000 ;0x0 (0x0002455A-0x00024578, Entry count: 0x0000001E)
	dc.l	Battle_FroggyArt
	dc.w	$001E, $0024, $0011, $000D ;0x0 (0x0002457C-0x00024584, Entry count: 0x00000008)
	dc.b	$20, $48, $00, $18, $12, $33, $08, $33 ;0x0 (0x00024584-0x0002458C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_FireAntAttack, SFXID_AmoebaAttack
	dc.l	Battle_FroggyMap
	dc.b	$14, $14

Enemy_Squat:
	dc.w	$0EAE, $0C8C, $0A6A, $0848, $0626, $0404, $0202, $0400, $0600, $0A00, $0C00, $020E, $020A, $0206, $0000 ;0x0 (0x0002459A-0x000245B8, Entry count: 0x0000001E)
	dc.l	Battle_FroggyArt
	dc.w	$010A, $00B4, $002E, $0020 ;0x0 (0x000245BC-0x000245C4, Entry count: 0x00000008)
	dc.b	$20, $4D, $00, $4C, $04, $4C, $0C, $33 ;0x0 (0x000245C4-0x000245CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_FireAntAttack, SFXID_MosquitoAttack
	dc.l	Battle_FroggyMap
	dc.b	$15, $15

Enemy_Carrier:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000 ;0x0 (0x000245DA-0x000245F8, Entry count: 0x0000001E)
	dc.l	Battle_CarrierArt
	dc.w	$0009, $0010, $0006, $000A ;0x0 (0x000245FC-0x00024604, Entry count: 0x00000008)
	dc.b	$20, $1F, $00, $11, $00, $00, $00, $4C ;0x0 (0x00024604-0x0002460C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_FireAntAttack, SFXID_FireAntAttack
	dc.l	Battle_CarrierMap
	dc.b	$16, $16

Enemy_Mushroom:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000 ;0x0 (0x0002461A-0x00024638, Entry count: 0x0000001E)
	dc.l	Battle_CarrierArt
	dc.w	$0065, $007C, $0024, $001D ;0x0 (0x0002463C-0x00024644, Entry count: 0x00000008)
	dc.b	$20, $2B, $00, $36, $00, $00, $00, $4C ;0x0 (0x00024644-0x0002464C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_TerakiteAttack, SFXID_TerakiteAttack
	dc.l	Battle_CarrierMap
	dc.b	$17, $17

Enemy_HeadRot:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000 ;0x0 (0x0002465A-0x00024678, Entry count: 0x0000001E)
	dc.l	Battle_CarrierArt
	dc.w	$0137, $00FE, $0039, $002A ;0x0 (0x0002467C-0x00024684, Entry count: 0x00000008)
	dc.b	$20, $2D, $00, $5F, $00, $00, $00, $4C ;0x0 (0x00024684-0x0002468C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_BlasterAttack, SFXID_BlasterAttack
	dc.l	Battle_CarrierMap
	dc.b	$18, $18

Enemy_Whistle:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $04AC, $028A, $0A40, $000E ;0x0 (0x0002469A-0x000246B8, Entry count: 0x0000001E)
	dc.l	Battle_WhistleArt
	dc.w	$01D6, $0054, $0025, $0005 ;0x0 (0x000246BC-0x000246C4, Entry count: 0x00000008)
	dc.b	$40, $44, $00, $52, $00, $00, $00, $B2 ;0x0 (0x000246C4-0x000246CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $66, $02, $6C, $08
	dc.b	SFXID_WhistleAttack, SFXID_Whip
	dc.l	Battle_WhistleMap
	dc.b	$19, $19

Enemy_Informer:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0008, $0CCA, $0EEC, $0EEE, $0EA0, $0EC8, $0CA8, $0A84, $0A40, $0E60 ;0x0 (0x000246DA-0x000246F8, Entry count: 0x0000001E)
	dc.l	Battle_WhistleArt
	dc.w	$02B1, $008E, $0035, $0008 ;0x0 (0x000246FC-0x00024704, Entry count: 0x00000008)
	dc.b	$40, $44, $00, $7D, $11, $33, $08, $B2 ;0x0 (0x00024704-0x0002470C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $66, $02, $6C, $08
	dc.b	SFXID_WhistleAttack, SFXID_Whip
	dc.l	Battle_WhistleMap
	dc.b	$1A, $1A

Enemy_Tracer:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $008E, $00CE, $04AC, $028A, $0A40, $000E ;0x0 (0x0002471A-0x00024738, Entry count: 0x0000001E)
	dc.l	Battle_WhistleArt
	dc.w	$0002, $0002, $0009, $0008 ;0x0 (0x0002473C-0x00024744, Entry count: 0x00000008)
	dc.b	$40, $0A, $00, $28, $00, $00, $00, $FF ;0x0 (0x00024744-0x0002474C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $66, $02, $6C, $08
	dc.b	SFXID_WhistleAttack, SFXID_Whip
	dc.l	Battle_WhistleMap
	dc.b	$1B, $1B

Enemy_Locust:
	dc.w	$0000, $0004, $0026, $0048, $006A, $008C, $08CE, $0EEE, $0222, $0468, $06AC, $0226, $044A, $0600, $0E62 ;0x0 (0x0002475A-0x00024778, Entry count: 0x0000001E)
	dc.l	Battle_LocustArt
	dc.w	$0007, $000F, $0008, $0005 ;0x0 (0x0002477C-0x00024784, Entry count: 0x00000008)
	dc.b	$20, $17, $00, $0A, $00, $00, $00, $66 ;0x0 (0x00024784-0x0002478C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $4C, $0C, $4C, $0C
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_LocustMap
	dc.b	$1C, $1C

Enemy_Locusta:
	dc.w	$0000, $0020, $0260, $04A0, $06C4, $08E8, $0AEC, $0EEE, $0220, $0660, $0CC0, $0444, $0888, $0004, $000A ;0x0 (0x0002479A-0x000247B8, Entry count: 0x0000001E)
	dc.l	Battle_LocustArt
	dc.w	$0025, $0045, $001C, $0012 ;0x0 (0x000247BC-0x000247C4, Entry count: 0x00000008)
	dc.b	$20, $28, $00, $1A, $00, $00, $00, $4C ;0x0 (0x000247C4-0x000247CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $4C, $0C, $4C, $0C
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_LocustMap
	dc.b	$1D, $1D

Enemy_Fanbite:
	dc.w	$0000, $0402, $0622, $0844, $0A64, $0C84, $0ECA, $0EEE, $0002, $0026, $026A, $0664, $0CCA, $0204, $084C ;0x0 (0x000247DA-0x000247F8, Entry count: 0x0000001E)
	dc.l	Battle_LocustArt
	dc.w	$012D, $0100, $0036, $0014 ;0x0 (0x000247FC-0x00024804, Entry count: 0x00000008)
	dc.b	$20, $3C, $00, $50, $13, $33, $14, $33 ;0x0 (0x00024804-0x0002480C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $4C, $0C, $4C, $0C
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_LocustMap
	dc.b	$1E, $1E

Enemy_Amoeba:
	dc.w	$0200, $0400, $0622, $0844, $0A66, $0C88, $0000, $0000, $000E, $000A, $0006, $0000, $0000, $0000, $0000 ;0x0 (0x0002481A-0x00024838, Entry count: 0x0000001E)
	dc.l	Battle_AmoebaArt
	dc.w	$000C, $0016, $000B, $000A ;0x0 (0x0002483C-0x00024844, Entry count: 0x00000008)
	dc.b	$20, $0A, $00, $0D, $03, $33, $08, $99 ;0x0 (0x00024844-0x0002484C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_AmoebaAttack, SFXID_BlasterAttack
	dc.l	Battle_AmoebaMap
	dc.b	$1F, $1F

Enemy_Jelly:
	dc.w	$0200, $0402, $0604, $0806, $0A08, $0C0A, $0000, $0000, $08B0, $000A, $0480, $0040, $0000, $0000, $0000 ;0x0 (0x0002485A-0x00024878, Entry count: 0x0000001E)
	dc.l	Battle_AmoebaArt
	dc.w	$0025, $0043, $001A, $000A ;0x0 (0x0002487C-0x00024884, Entry count: 0x00000008)
	dc.b	$20, $14, $00, $2A, $05, $19, $10, $B2 ;0x0 (0x00024884-0x0002488C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_AmoebaAttack, SFXID_BlasterAttack
	dc.l	Battle_AmoebaMap
	dc.b	$20, $20

Enemy_Slugmess:
	dc.w	$0CE0, $0AC0, $08A0, $0680, $0460, $0240, $0020, $0022, $0044, $0066, $00CC, $020E, $020A, $0206, $0000 ;0x0 (0x0002489A-0x000248B8, Entry count: 0x0000001E)
	dc.l	Battle_AmoebaArt
	dc.w	$00E7, $00DA, $0037, $000A ;0x0 (0x000248BC-0x000248C4, Entry count: 0x00000008)
	dc.b	$20, $14, $00, $60, $0C, $7F, $00, $99 ;0x0 (0x000248C4-0x000248CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $0C, $64, $0C
	dc.b	SFXID_AmoebaAttack, SFXID_BlasterAttack
	dc.l	Battle_AmoebaMap
	dc.b	$21, $21

Enemy_Polezi:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $01AC, $028A, $0A40, $000E ;0x0 (0x000248DA-0x000248F8, Entry count: 0x0000001E)
	dc.l	Battle_PoleziArt
	dc.w	$0238, $00A0, $0032, $000A ;0x0 (0x000248FC-0x00024904, Entry count: 0x00000008)
	dc.b	$40, $21, $00, $55, $00, $00, $00, $B2 ;0x0 (0x00024904-0x0002490C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $5C, $0C, $5C, $0C
	dc.b	SFXID_PoleziAttack, SFXID_Whip
	dc.l	Battle_PoleziMap
	dc.b	$22, $22

Enemy_Poleziax:
	dc.w	$0000, $0420, $0820, $0C20, $0E40, $0E60, $0EA0, $0EC8, $0EEE, $008E, $00CE, $0AAC, $028A, $0A40, $000E ;0x0 (0x0002491A-0x00024938, Entry count: 0x0000001E)
	dc.l	Battle_PoleziArt
	dc.w	$0357, $00F0, $0057, $000A ;0x0 (0x0002493C-0x00024944, Entry count: 0x00000008)
	dc.b	$40, $32, $00, $76, $03, $66, $08, $CC ;0x0 (0x00024944-0x0002494C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $5C, $0C, $5C, $0C
	dc.b	SFXID_PoleziAttack, SFXID_Whip
	dc.l	Battle_PoleziMap
	dc.b	$23, $23

Enemy_Poleziss:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0EA0, $0EC8, $0AAA, $0666, $0A40, $0E60 ;0x0 (0x0002495A-0x00024978, Entry count: 0x0000001E)
	dc.l	Battle_PoleziArt
	dc.w	$0002, $0002, $000C, $0005 ;0x0 (0x0002497C-0x00024984, Entry count: 0x00000008)
	dc.b	$40, $0A, $00, $14, $00, $FF, $00, $FF ;0x0 (0x00024984-0x0002498C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $5C, $0C, $5C, $0C
	dc.b	SFXID_PoleziAttack, SFXID_Whip
	dc.l	Battle_PoleziMap
	dc.b	$24, $24

Enemy_Leecher:
	dc.w	$0000, $0EEE, $06AA, $0488, $0266, $0044, $0022, $0020, $0A8E, $086C, $064A, $0428, $0440, $0880, $0CC0 ;0x0 (0x0002499A-0x000249B8, Entry count: 0x0000001E)
	dc.l	Battle_LeecherArt
	dc.w	$002F, $0031, $0014, $0006 ;0x0 (0x000249BC-0x000249C4, Entry count: 0x00000008)
	dc.b	$20, $2C, $00, $1A, $EC, $66, $04, $B2 ;0x0 (0x000249C4-0x000249CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_BeeAttack, SFXID_BlasterAttack
	dc.l	Battle_LeecherMap
	dc.b	$25, $25

Enemy_Fang:
	dc.w	$0000, $0EEE, $0A8C, $086A, $0648, $0426, $0204, $0002, $066E, $044C, $022A, $0008, $000E, $008E, $00EE ;0x0 (0x000249DA-0x000249F8, Entry count: 0x0000001E)
	dc.l	Battle_LeecherArt
	dc.w	$0089, $0090, $0025, $0008 ;0x0 (0x000249FC-0x00024A04, Entry count: 0x00000008)
	dc.b	$20, $3F, $00, $2E, $00, $00, $00, $CC ;0x0 (0x00024A04-0x00024A0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_BeeAttack, SFXID_BlasterAttack
	dc.l	Battle_LeecherMap
	dc.b	$26, $26

Enemy_Python:
	dc.w	$0000, $0EEE, $0CCC, $0AAA, $0888, $0666, $0444, $0222, $0E8E, $0C6C, $0A4A, $0828, $06E6, $04C4, $0484 ;0x0 (0x00024A1A-0x00024A38, Entry count: 0x0000001E)
	dc.l	Battle_LeecherArt
	dc.w	$0147, $0112, $0041, $000A ;0x0 (0x00024A3C-0x00024A44, Entry count: 0x00000008)
	dc.b	$20, $58, $00, $7A, $EB, $66, $0C, $99 ;0x0 (0x00024A44-0x00024A4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_BeeAttack, SFXID_BlasterAttack
	dc.l	Battle_LeecherMap
	dc.b	$27, $27

; unused
Enemy_S:
	dc.b	$0E, $C0, $0C, $A0, $0A, $80, $08, $60, $06, $40, $04, $20, $00, $24, $00, $46
	dc.b	$00, $8A, $00, $CE, $08, $EE, $00, $0A, $00, $2C, $0E, $EE, $04, $A0 ;0x0 (0x00024A5A-0x00024A78, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_AntArt
	dc.b	$00, $0F, $00, $1B, $00, $0D, $00, $0A, $20, $0B, $00, $0C, $00, $FF, $00, $66
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$28, $28

; unused
Enemy_K:
	dc.b	$0A, $EC, $08, $CA, $06, $A8, $04, $86, $02, $64, $00, $42, $00, $04, $00, $26
	dc.b	$00, $48, $00, $6A, $00, $8C, $04, $24, $06, $46, $0E, $EE, $00, $00 ;0x20
	dc.l	Battle_AntArt
	dc.b	$00, $3E, $00, $70, $00, $21, $00, $12, $20, $15, $00, $26, $00, $FF, $00, $66
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$29, $29

; unused
Enemy_H:
	dc.b	$08, $CE, $06, $AE, $04, $8E, $02, $6E, $00, $4E, $00, $0E, $02, $26, $04, $48
	dc.b	$06, $6A, $08, $8C, $0A, $AE, $04, $2E, $00, $00, $00, $00, $00, $00 ;0x20
	dc.l	Battle_AntArt
	dc.b	$00, $98, $01, $12, $00, $37, $00, $24, $20, $22, $00, $53, $00, $FF, $00, $7F
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$2A, $2A

Enemy_Pulser:
	dc.w	$0000, $0044, $0266, $0488, $06AA, $08CC, $0AEE, $0028, $024A, $046C, $08AE, $0062, $00A8, $02EA, $0000 ;0x0 (0x00024B1A-0x00024B38, Entry count: 0x0000001E)
	dc.l	Battle_PulserArt
	dc.w	$000C, $0012, $0008, $000A ;0x0 (0x00024B3C-0x00024B44, Entry count: 0x00000008)
	dc.b	$20, $18, $00, $11, $00, $00, $00, $19 ;0x0 (0x00024B44-0x00024B4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_PulserAttack, SFXID_BlasterAttack
	dc.l	Battle_PulserMap
	dc.b	$2B, $2B

Enemy_Blaster:
	dc.w	$0000, $0406, $0626, $0846, $0A66, $0C86, $0EC8, $0202, $0224, $0268, $04AE, $0062, $00A8, $02EA, $0000 ;0x0 (0x00024B5A-0x00024B78, Entry count: 0x0000001E)
	dc.l	Battle_PulserArt
	dc.w	$003E, $003C, $000F, $000A ;0x0 (0x00024B7C-0x00024B84, Entry count: 0x00000008)
	dc.b	$20, $22, $00, $34, $EB, $FF, $00, $33 ;0x0 (0x00024B84-0x00024B8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_PulserAttack, SFXID_BlasterAttack
	dc.l	Battle_PulserMap
	dc.b	$2C, $2C

Enemy_Blastoid:
	dc.w	$0000, $0640, $0662, $0684, $04A6, $04C8, $04EC, $0400, $0620, $0842, $0E86, $0062, $00A8, $02EA, $0000 ;0x0 (0x00024B9A-0x00024BB8, Entry count: 0x0000001E)
	dc.l	Battle_PulserArt
	dc.w	$0173, $0104, $001A, $000A ;0x0 (0x00024BBC-0x00024BC4, Entry count: 0x00000008)
	dc.b	$20, $3C, $00, $A3, $0C, $99, $00, $33 ;0x0 (0x00024BC4-0x00024BCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_PulserAttack, SFXID_BlasterAttack
	dc.l	Battle_PulserMap
	dc.b	$2D, $2D

Enemy_RotWood:
	dc.w	$0EE8, $0EA0, $0C80, $0A60, $0840, $0620, $0400, $0000, $046C, $0024, $0004, $06EE, $00AA, $0066, $0022 ;0x0 (0x00024BDA-0x00024BF8, Entry count: 0x0000001E)
	dc.l	Battle_RotWoodArt
	dc.w	$008D, $00A7, $002D, $0006 ;0x0 (0x00024BFC-0x00024C04, Entry count: 0x00000008)
	dc.b	$20, $47, $00, $32, $00, $00, $00, $B2 ;0x0 (0x00024C04-0x00024C0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_RotWoodMap
	dc.b	$2E, $2E

Enemy_Blockhed:
	dc.w	$06CE, $0EAC, $028A, $0048, $0026, $0004, $0002, $0000, $0CC0, $0660, $0220, $0AAA, $0888, $0666, $0222 ;0x0 (0x00024C1A-0x00024C38, Entry count: 0x0000001E)
	dc.l	Battle_RotWoodArt
	dc.w	$0105, $0125, $003B, $0008 ;0x0 (0x00024C3C-0x00024C44, Entry count: 0x00000008)
	dc.b	$20, $5A, $00, $50, $00, $00, $00, $CC ;0x0 (0x00024C44-0x00024C4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_RotWoodMap
	dc.b	$2F, $2F

Enemy_Firia:
	dc.w	$06CE, $06AC, $0288, $0066, $0044, $0024, $0002, $0000, $06E6, $0280, $0040, $0C88, $0844, $0422, $0220 ;0x0 (0x00024C5A-0x00024C78, Entry count: 0x0000001E)
	dc.l	Battle_RotWoodArt
	dc.w	$0132, $0166, $0044, $000A ;0x0 (0x00024C7C-0x00024C84, Entry count: 0x00000008)
	dc.b	$20, $62, $00, $6D, $00, $00, $00, $B2 ;0x0 (0x00024C84-0x00024C8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_RotWoodMap
	dc.b	$30, $30

Enemy_Wolfang:
	dc.w	$0EEE, $0ECA, $0CA8, $0A86, $0864, $0642, $0420, $0000, $000C, $004E, $006E, $008E, $00EE, $0004, $000C ;0x0 (0x00024C9A-0x00024CB8, Entry count: 0x0000001E)
	dc.l	Battle_WolfangArt
	dc.w	$0105, $00DA, $0036, $000F ;0x0 (0x00024CBC-0x00024CC4, Entry count: 0x00000008)
	dc.b	$20, $4F, $00, $48, $00, $00, $00, $CC ;0x0 (0x00024CC4-0x00024CCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_WolfangMap
	dc.b	$31, $31

Enemy_Burnwolf:
	dc.w	$0EEE, $08CA, $06A8, $0486, $0264, $0042, $0020, $0000, $0C08, $0C68, $0C88, $0CA8, $0CC8, $0004, $000C ;0x0 (0x00024CDA-0x00024CF8, Entry count: 0x0000001E)
	dc.l	Battle_WolfangArt
	dc.w	$019C, $017E, $004F, $0010 ;0x0 (0x00024CFC-0x00024D04, Entry count: 0x00000008)
	dc.b	$20, $65, $00, $70, $00, $00, $00, $CC ;0x0 (0x00024D04-0x00024D0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_WolfangMap
	dc.b	$32, $32

Enemy_Flarewlf:
	dc.w	$0EEE, $0CAC, $0A8C, $086C, $064C, $042A, $0208, $0000, $0660, $0680, $06A0, $06C0, $0AE4, $0004, $000C ;0x0 (0x00024D1A-0x00024D38, Entry count: 0x0000001E)
	dc.l	Battle_WolfangArt
	dc.w	$01D7, $01C7, $0055, $0011 ;0x0 (0x00024D3C-0x00024D44, Entry count: 0x00000008)
	dc.b	$20, $6D, $00, $91, $04, $33, $18, $CC ;0x0 (0x00024D44-0x00024D4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_WolfangMap
	dc.b	$33, $33

Enemy_PugHit:
	dc.w	$0000, $0400, $0620, $0842, $0A64, $0C86, $0EA8, $0ECA, $0EEE, $006E, $0000, $0246, $0468, $08AC, $0000 ;0x0 (0x00024D5A-0x00024D78, Entry count: 0x0000001E)
	dc.l	Battle_PugHitArt
	dc.w	$002A, $0026, $0016, $0011 ;0x0 (0x00024D7C-0x00024D84, Entry count: 0x00000008)
	dc.b	$20, $2F, $00, $15, $0E, $19, $0C, $CC ;0x0 (0x00024D84-0x00024D8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_PugHitMap
	dc.b	$34, $34

Enemy_PugBrat:
	dc.w	$0000, $0004, $0006, $0028, $004A, $026C, $048E, $08CE, $0EEE, $0C44, $0200, $0652, $0000, $0CA8, $0000 ;0x0 (0x00024D9A-0x00024DB8, Entry count: 0x0000001E)
	dc.l	Battle_PugHitArt
	dc.w	$00CE, $0073, $003B, $002F ;0x0 (0x00024DBC-0x00024DC4, Entry count: 0x00000008)
	dc.b	$20, $5D, $00, $58, $0F, $33, $04, $E5 ;0x0 (0x00024DC4-0x00024DCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_PugHitMap
	dc.b	$35, $35

Enemy_PugKill:
	dc.b	$00, $00, $00, $02, $00, $24, $02, $46, $02, $68, $02, $88, $02, $AC, $0A, $EE
	dc.b	$0E, $EE, $02, $A0, $02, $22, $06, $06, $00, $00, $0E, $6E, $00, $00 ;0x0 (0x00024DDA-0x00024DF8, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_PugHitArt
	dc.b	$01, $2E, $01, $1A, $00, $45, $00, $11, $20, $65, $00, $62, $00, $00, $00, $E5
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_PugHitMap
	dc.b	$36, $36

; unused
Enemy_S2:
	dc.b	$04, $0E, $04, $0C, $04, $0A, $04, $08, $04, $06, $04, $04, $06, $AE, $04, $8C
	dc.b	$02, $6A, $00, $48, $08, $CC, $06, $AA, $04, $88, $02, $66, $00, $00 ;0x20
	dc.l	Battle_AntArt
	dc.b	$00, $16, $00, $26, $00, $10, $00, $0E, $20, $1B, $00, $23, $00, $00, $00, $CC
	dc.b	$0F, $03, $70, $00, $70, $00
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$37, $37

; unused
Enemy_S3:
	dc.b	$04, $0E, $04, $0C, $04, $0A, $04, $08, $04, $06, $04, $04, $00, $8E, $00, $6C
	dc.b	$00, $4A, $00, $28, $0A, $A8, $08, $86, $06, $64, $04, $42, $00, $00 ;0x20
	dc.l	Battle_AntArt
	dc.b	$00, $41, $00, $6B, $00, $20, $00, $25, $20, $31, $00, $3A, $00, $00, $00, $E5
	dc.b	$0F, $03, $70, $00, $70, $00
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$38, $38

; unused
Enemy_S4:
	dc.b	$04, $0E, $04, $0C, $04, $0A, $04, $08, $04, $06, $04, $04, $04, $8C, $08, $6A
	dc.b	$06, $48, $04, $26, $00, $EA, $00, $C8, $00, $A6, $00, $86, $00, $00 ;0x20
	dc.l	Battle_AntArt
	dc.b	$00, $73, $00, $CD, $00, $28, $00, $32, $20, $40, $00, $77, $00, $00, $00, $E5
	dc.b	$0F, $03, $74, $00, $74, $00
	dc.b	SFXID_FireAntAttack, SFXID_Whip
	dc.l	Battle_AntMap
	dc.b	$39, $39

Enemy_Wireface:
	dc.w	$0EEE, $0EEC, $0CCA, $0AA8, $0886, $0664, $0442, $0000, $000A, $0800, $0E00, $0E80, $04EE, $008E, $024E ;0x0 (0x00024EDA-0x00024EF8, Entry count: 0x0000001E)
	dc.l	Battle_WirefaceArt
	dc.w	$02CE, $00D5, $0037, $000A ;0x0 (0x00024EFC-0x00024F04, Entry count: 0x00000008)
	dc.b	$40, $43, $00, $89, $00, $00, $00, $66 ;0x0 (0x00024F04-0x00024F0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_WirefaceMap
	dc.b	$3A, $3A

Enemy_Wirehead:
	dc.w	$0EEE, $0ECE, $0CAC, $0A8A, $0868, $0646, $0424, $0000, $0060, $0800, $0E00, $0E80, $04EE, $00C8, $0294 ;0x0 (0x00024F1A-0x00024F38, Entry count: 0x0000001E)
	dc.l	Battle_WirefaceArt
	dc.w	$03F6, $00D5, $0043, $000F ;0x0 (0x00024F3C-0x00024F44, Entry count: 0x00000008)
	dc.b	$40, $4E, $00, $9F, $00, $00, $00, $66 ;0x0 (0x00024F44-0x00024F4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_WirefaceMap
	dc.b	$3B, $3B

Enemy_PodHead:
	dc.w	$0EEE, $0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0000, $0808, $0800, $0E00, $0E80, $0ECE, $0EAE, $0C4C ;0x0 (0x00024F5A-0x00024F78, Entry count: 0x0000001E)
	dc.l	Battle_WirefaceArt
	dc.w	$047D, $013F, $0050, $000F ;0x0 (0x00024F7C-0x00024F84, Entry count: 0x00000008)
	dc.b	$40, $55, $00, $B0, $00, $00, $00, $66 ;0x0 (0x00024F84-0x00024F8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_WirefaceMap
	dc.b	$3C, $3C

Enemy_Terakite:
	dc.w	$0CCA, $0AA8, $0886, $0664, $0442, $0220, $0EEE, $08EE, $0266, $000A, $0008, $004E, $048E, $08CE, $046E ;0x0 (0x00024F9A-0x00024FB8, Entry count: 0x0000001E)
	dc.l	Battle_TerakiteArt
	dc.w	$010A, $0102, $003A, $004D ;0x0 (0x00024FBC-0x00024FC4, Entry count: 0x00000008)
	dc.b	$20, $3E, $00, $43, $03, $33, $0C, $B2 ;0x0 (0x00024FC4-0x00024FCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $54, $14
	dc.b	SFXID_TerakiteAttack, SFXID_WhistleAttack
	dc.l	Battle_TerakiteMap
	dc.b	$3D, $3D

Enemy_Reptile:
	dc.w	$0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0EEE, $008E, $002A, $086C, $064A, $0A8E, $0666, $0AAA, $0888 ;0x0 (0x00024FDA-0x00024FF8, Entry count: 0x0000001E)
	dc.l	Battle_TerakiteArt
	dc.w	$0183, $01B8, $004F, $0050 ;0x0 (0x00024FFC-0x00025004, Entry count: 0x00000008)
	dc.b	$20, $46, $00, $5C, $EB, $7F, $0C, $CC ;0x0 (0x00025004-0x0002500C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $54, $14
	dc.b	SFXID_TerakiteAttack, SFXID_WhistleAttack
	dc.l	Battle_TerakiteMap
	dc.b	$3E, $3E

Enemy_KiteDrgn:
	dc.b	$0C, $CE, $0A, $AC, $08, $8A, $06, $68, $04, $46, $02, $24, $0E, $EE, $06, $C0
	dc.b	$00, $40, $04, $0E, $00, $0A, $06, $2E, $0C, $A0, $0E, $E8, $0A, $80 ;0x0 (0x0002501A-0x00025038, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_TerakiteArt
	dc.b	$01, $5F, $01, $DB, $00, $54, $00, $55, $20, $4A, $00, $71, $09, $4C, $00, $CC
	dc.b	$0F, $03, $54, $14, $54, $14
	dc.b	SFXID_TerakiteAttack, SFXID_WhistleAttack
	dc.l	Battle_TerakiteMap
	dc.b	$3F, $3F

Enemy_FireEye:
	dc.w	$0204, $024E, $028E, $02CE, $02EE, $0EEE, $0020, $0040, $0262, $0484, $0686, $0CE8, $0A00, $0C20, $0E42 ;0x0 (0x0002505A-0x00025078, Entry count: 0x0000001E)
	dc.l	Battle_FireEyeArt
	dc.w	$0031, $0058, $001D, $0020 ;0x0 (0x0002507C-0x00025084, Entry count: 0x00000008)
	dc.b	$20, $14, $00, $34, $F5, $66, $08, $7F ;0x0 (0x00025084-0x0002508C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $50, $14
	dc.b	SFXID_TerakiteAttack, SFXID_VanAttack
	dc.l	Battle_FireEyeMap
	dc.b	$40, $40

Enemy_Glowstik:
	dc.w	$0402, $0822, $0A42, $0C84, $0EC8, $0EEE, $0002, $0224, $0246, $0468, $068A, $0ACE, $0060, $02A0, $04E0 ;0x0 (0x0002509A-0x000250B8, Entry count: 0x0000001E)
	dc.l	Battle_FireEyeArt
	dc.w	$014A, $013B, $0043, $002D ;0x0 (0x000250BC-0x000250C4, Entry count: 0x00000008)
	dc.b	$20, $28, $00, $78, $EB, $66, $08, $99 ;0x0 (0x000250C4-0x000250CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $50, $14
	dc.b	SFXID_TerakiteAttack, SFXID_VanAttack
	dc.l	Battle_FireEyeMap
	dc.b	$41, $41

Enemy_Forest:
	dc.w	$0020, $0240, $0280, $02C4, $02E8, $0EEE, $0202, $0424, $0846, $0A66, $0CA8, $0EC8, $008E, $00CE, $04EE ;0x0 (0x000250DA-0x000250F8, Entry count: 0x0000001E)
	dc.l	Battle_FireEyeArt
	dc.w	$01F5, $01E1, $0053, $003A ;0x0 (0x000250FC-0x00025104, Entry count: 0x00000008)
	dc.b	$20, $2D, $00, $AF, $00, $00, $00, $4C ;0x0 (0x00025104-0x0002510C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $50, $14
	dc.b	SFXID_TerakiteAttack, SFXID_VanAttack
	dc.l	Battle_FireEyeMap
	dc.b	$42, $42

Enemy_Catman:
	dc.w	$0000, $0CAA, $0A88, $0866, $0644, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0422, $0000, $0000 ;0x0 (0x0002511A-0x00025138, Entry count: 0x0000001E)
	dc.l	Battle_CatmanArt
	dc.w	$0114, $00EC, $003D, $000A ;0x0 (0x0002513C-0x00025144, Entry count: 0x00000008)
	dc.b	$20, $32, $00, $43, $00, $00, $00, $99 ;0x0 (0x00025144-0x0002514C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_CatmanMap
	dc.b	$43, $43

Enemy_Catfang:
	dc.w	$0000, $0AAE, $088E, $066C, $044A, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0226, $0000, $0000 ;0x0 (0x0002515A-0x00025178, Entry count: 0x0000001E)
	dc.l	Battle_CatmanArt
	dc.w	$01E1, $01AE, $004F, $000A ;0x0 (0x0002517C-0x00025184, Entry count: 0x00000008)
	dc.b	$20, $37, $00, $84, $00, $00, $00, $7F ;0x0 (0x00025184-0x0002518C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_CatmanMap
	dc.b	$44, $44

Enemy_Cateye:
	dc.w	$0000, $00AE, $008E, $006C, $004A, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0026, $0000, $0000 ;0x0 (0x0002519A-0x000251B8, Entry count: 0x0000001E)
	dc.l	Battle_CatmanArt
	dc.w	$0209, $01E1, $0056, $000A ;0x0 (0x000251BC-0x000251C4, Entry count: 0x00000008)
	dc.b	$20, $41, $00, $B6, $00, $00, $00, $66 ;0x0 (0x000251C4-0x000251CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_CatmanMap
	dc.b	$45, $45

Enemy_Mechoman:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $08EE, $00CE, $008E, $04AC, $0068, $002A ;0x0 (0x000251DA-0x000251F8, Entry count: 0x0000001E)
	dc.l	Battle_MechomanArt
	dc.w	$0273, $008A, $002E, $0044 ;0x0 (0x000251FC-0x00025204, Entry count: 0x00000008)
	dc.b	$40, $23, $00, $41, $F5, $FF, $0C, $E5 ;0x0 (0x00025204-0x0002520C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $40, $00, $40, $00
	dc.b	SFXID_WhistleAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_MechomanMap
	dc.b	$46, $46

Enemy_Sonomech:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $08EE, $00CE, $008E, $0AAA, $0888, $002A ;0x0 (0x0002521A-0x00025238, Entry count: 0x0000001E)
	dc.l	Battle_MechomanArt
	dc.w	$0379, $00C7, $0047, $0054 ;0x0 (0x0002523C-0x00025244, Entry count: 0x00000008)
	dc.b	$40, $2B, $00, $55, $EB, $FF, $0C, $CC ;0x0 (0x00025244-0x0002524C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $40, $00, $40, $00
	dc.b	SFXID_WhistleAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_MechomanMap
	dc.b	$47, $47

Enemy_Attmech:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0ECA, $0EA0, $0E60, $0AAA, $0666, $0800 ;0x0 (0x0002525A-0x00025278, Entry count: 0x0000001E)
	dc.l	Battle_MechomanArt
	dc.w	$0456, $0107, $0056, $005F ;0x0 (0x0002527C-0x00025284, Entry count: 0x00000008)
	dc.b	$40, $3A, $00, $69, $F1, $FF, $0C, $E5 ;0x0 (0x00025284-0x0002528C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $40, $00, $40, $00
	dc.b	SFXID_WhistleAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_MechomanMap
	dc.b	$48, $48

Enemy_Mazgamma:
	dc.w	$0EEE, $0CCA, $0AA8, $0886, $0664, $0442, $0000, $0000, $000C, $0800, $0E00, $0E80, $00EE, $008E, $024E ;0x0 (0x0002529A-0x000252B8, Entry count: 0x0000001E)
	dc.l	Battle_MazgammaArt
	dc.w	$02AF, $00CD, $0044, $0005 ;0x0 (0x000252BC-0x000252C4, Entry count: 0x00000008)
	dc.b	$40, $5A, $00, $98, $00, $00, $00, $CC ;0x0 (0x000252C4-0x000252CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_WhistleAttack, SFXID_WhistleAttack
	dc.l	Battle_MazgammaMap
	dc.b	$49, $49

Enemy_Firgamma:
	dc.w	$0EEE, $0CCE, $0AAC, $088A, $0668, $0446, $0224, $0000, $0060, $000A, $000E, $066E, $0EE6, $00C8, $0294 ;0x0 (0x000252DA-0x000252F8, Entry count: 0x0000001E)
	dc.l	Battle_MazgammaArt
	dc.w	$03C0, $0138, $0058, $0011 ;0x0 (0x000252FC-0x00025304, Entry count: 0x00000008)
	dc.b	$40, $6C, $00, $B8, $00, $00, $00, $B2 ;0x0 (0x00025304-0x0002530C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_WhistleAttack, SFXID_WhistleAttack
	dc.l	Battle_MazgammaMap
	dc.b	$4A, $4A

Enemy_Kilgamma:
	dc.w	$0EEE, $0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0000, $0808, $0080, $00E2, $00EA, $0EAE, $0C8C, $0C4C ;0x0 (0x0002531A-0x00025338, Entry count: 0x0000001E)
	dc.l	Battle_MazgammaArt
	dc.w	$04FF, $0154, $0066, $0014 ;0x0 (0x0002533C-0x00025344, Entry count: 0x00000008)
	dc.b	$40, $7D, $00, $D7, $00, $00, $00, $CC ;0x0 (0x00025344-0x0002534C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_WhistleAttack, SFXID_WhistleAttack
	dc.l	Battle_MazgammaMap
	dc.b	$4B, $4B

Enemy_Metalman:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $0EC8, $0EA0, $0AA8, $0664, $00CE, $000E ;0x0 (0x0002535A-0x00025378, Entry count: 0x0000001E)
	dc.l	Battle_MetalmanArt
	dc.w	$02C3, $00C5, $0040, $0003 ;0x0 (0x0002537C-0x00025384, Entry count: 0x00000008)
	dc.b	$40, $44, $00, $94, $F1, $66, $08, $CC ;0x0 (0x00025384-0x0002538C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $00, $50, $00
	dc.b	SFXID_PoleziAttack, SFXID_WhistleAttack
	dc.l	Battle_MetalmanMap
	dc.b	$4C, $4C

Enemy_TwigMan:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $0EC8, $0EA0, $028A, $0066, $00CE, $000E ;0x0 (0x0002539A-0x000253B8, Entry count: 0x0000001E)
	dc.l	Battle_MetalmanArt
	dc.w	$0421, $0116, $0054, $000E ;0x0 (0x000253BC-0x000253C4, Entry count: 0x00000008)
	dc.b	$40, $58, $00, $9E, $00, $00, $00, $B2 ;0x0 (0x000253C4-0x000253CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $00, $50, $00
	dc.b	SFXID_PoleziAttack, SFXID_WhistleAttack
	dc.l	Battle_MetalmanMap
	dc.b	$4D, $4D

Enemy_Twigtall:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0AE6, $06E2, $0AAA, $0888, $0EA0, $000E ;0x0 (0x000253DA-0x000253F8, Entry count: 0x0000001E)
	dc.l	Battle_MetalmanArt
	dc.w	$04FF, $0149, $006C, $0010 ;0x0 (0x000253FC-0x00025404, Entry count: 0x00000008)
	dc.b	$40, $5D, $00, $D0, $E7, $99, $08, $CC ;0x0 (0x00025404-0x0002540C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $58, $00, $50, $00
	dc.b	SFXID_PoleziAttack, SFXID_WhistleAttack
	dc.l	Battle_MetalmanMap
	dc.b	$4E, $4E

Enemy_Cooley61:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $0486, $0264, $00CE, $000E ;0x0 (0x0002541A-0x00025438, Entry count: 0x0000001E)
	dc.l	Battle_Cooley61Art
	dc.w	$045E, $00B0, $005B, $0033 ;0x0 (0x0002543C-0x00025444, Entry count: 0x00000008)
	dc.b	$40, $3F, $00, $A1, $00, $00, $00, $99 ;0x0 (0x00025444-0x0002544C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $47, $08, $47, $08
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_Cooley61Map
	dc.b	$4F, $4F

Enemy_Monster:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $0E60, $00CE, $0AAA, $0666, $0EA0, $000E ;0x0 (0x0002545A-0x00025478, Entry count: 0x0000001E)
	dc.l	Battle_Cooley61Art
	dc.w	$05C4, $007C, $006A, $0036 ;0x0 (0x0002547C-0x00025484, Entry count: 0x00000008)
	dc.b	$40, $49, $00, $C2, $00, $00, $00, $66 ;0x0 (0x00025484-0x0002548C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $47, $08, $47, $08
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_Cooley61Map
	dc.b	$50, $50

Enemy_Lrgminer:
	dc.w	$0000, $0020, $0040, $0262, $0484, $06A6, $08C8, $0AEA, $0EEE, $008E, $00CE, $0AAA, $0666, $00CE, $000E ;0x0 (0x0002549A-0x000254B8, Entry count: 0x0000001E)
	dc.l	Battle_Cooley61Art
	dc.w	$07C2, $00BD, $0079, $0038 ;0x0 (0x000254BC-0x000254C4, Entry count: 0x00000008)
	dc.b	$40, $58, $00, $E2, $00, $00, $00, $4C ;0x0 (0x000254C4-0x000254CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $47, $08, $47, $08
	dc.b	SFXID_BeeAttack, SFXID_BeeAttack
	dc.l	Battle_Cooley61Map
	dc.b	$51, $51

Enemy_Eyesore:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $00CE, $0CCC, $0888, $0666, $0444, $000E ;0x0 (0x000254DA-0x000254F8, Entry count: 0x0000001E)
	dc.l	Battle_EyesoreArt
	dc.w	$034D, $01CE, $003D, $0050 ;0x0 (0x000254FC-0x00025504, Entry count: 0x00000008)
	dc.b	$40, $30, $00, $88, $EB, $B2, $08, $7F ;0x0 (0x00025504-0x0002550C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6A, $00, $6C, $00
	dc.b	SFXID_PoleziAttack, SFXID_VanAttack
	dc.l	Battle_EyesoreMap
	dc.b	$52, $52

Enemy_Hvysolid:
	dc.w	$0000, $0202, $0242, $0464, $0686, $08A8, $0ACA, $0CAC, $0EEE, $00CE, $0CCC, $0888, $0666, $0444, $000E ;0x0 (0x0002551A-0x00025538, Entry count: 0x0000001E)
	dc.l	Battle_EyesoreArt
	dc.w	$0827, $02BE, $0054, $005C ;0x0 (0x0002553C-0x00025544, Entry count: 0x00000008)
	dc.b	$40, $3A, $00, $BE, $E1, $CC, $0C, $66 ;0x0 (0x00025544-0x0002554C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6A, $00, $60, $00
	dc.b	SFXID_PoleziAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_EyesoreMap
	dc.b	$53, $53

Enemy_GunBust:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $00CE, $04AA, $0288, $0044, $0022, $000E ;0x0 (0x0002555A-0x00025578, Entry count: 0x0000001E)
	dc.l	Battle_EyesoreArt
	dc.w	$0D1E, $0392, $0068, $0062 ;0x0 (0x0002557C-0x00025584, Entry count: 0x00000008)
	dc.b	$40, $44, $00, $D7, $00, $00, $00, $7F ;0x0 (0x00025584-0x0002558C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6A, $00, $6C, $00
	dc.b	SFXID_PoleziAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_EyesoreMap
	dc.b	$54, $54

Enemy_ArmyEye:
	dc.w	$0000, $0000, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $0CCC, $0888, $0666, $0444, $0060, $000E ;0x0 (0x0002559A-0x000255B8, Entry count: 0x0000001E)
	dc.l	Battle_ArmyEyeArt
	dc.w	$0002, $0000, $0023, $0068 ;0x0 (0x000255BC-0x000255C4, Entry count: 0x00000008)
	dc.b	$40, $26, $0B, $B8, $07, $FF, $00, $00 ;0x0 (0x000255C4-0x000255CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $00, $68, $14
	dc.b	SFXID_ArmyEyeAttack, SFXID_BeeAttack
	dc.l	Battle_ArmyEyeMap
	dc.b	$55, $55

Enemy_Trcrbase:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $0CCC, $0AAA, $0888, $0666, $00CE, $008E ;0x0 (0x000255DA-0x000255F8, Entry count: 0x0000001E)
	dc.l	Battle_ArmyEyeArt
	dc.w	$06ED, $0360, $007F, $0068 ;0x0 (0x000255FC-0x00025604, Entry count: 0x00000008)
	dc.b	$40, $28, $00, $C9, $DD, $B2, $08, $19 ;0x0 (0x00025604-0x0002560C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $00, $68, $00
	dc.b	SFXID_ArmyEyeAttack, SFXID_VanAttack
	dc.l	Battle_ArmyEyeMap
	dc.b	$56, $56

Enemy_Specter:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0CCC, $0888, $0666, $0444, $00CE, $008E ;0x0 (0x0002561A-0x00025638, Entry count: 0x0000001E)
	dc.l	Battle_ArmyEyeArt
	dc.w	$095B, $007C, $009D, $007A ;0x0 (0x0002563C-0x00025644, Entry count: 0x00000008)
	dc.b	$40, $33, $01, $0C, $00, $00, $00, $33 ;0x0 (0x00025644-0x0002564C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $00, $60, $14
	dc.b	SFXID_ArmyEyeAttack, SFXID_VanAttack
	dc.l	Battle_ArmyEyeMap
	dc.b	$57, $57

Enemy_Van:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $00CE, $008E, $004E, $002E, $0008, $000E ;0x0 (0x0002565A-0x00025678, Entry count: 0x0000001E)
	dc.l	Battle_VanArt
	dc.w	$04EB, $0254, $005D, $0053 ;0x0 (0x0002567C-0x00025684, Entry count: 0x00000008)
	dc.b	$40, $37, $00, $C5, $F1, $66, $04, $19 ;0x0 (0x00025684-0x0002568C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $1C, $64, $1C
	dc.b	SFXID_VanAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_VanMap
	dc.b	$58, $58

Enemy_Vanleadr:
	dc.b	$00, $00, $00, $24, $02, $46, $04, $68, $06, $8A, $08, $AC, $0A, $CE, $0C, $EE
	dc.b	$0E, $EE, $06, $E2, $00, $C0, $00, $80, $00, $60, $00, $40, $00, $0E ;0x0 (0x0002569A-0x000256B8, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_VanArt
	dc.b	$06, $58, $02, $EB, $00, $6C, $00, $5F, $40, $3F, $00, $EF, $E7, $7F, $08, $33
	dc.b	$0F, $03, $64, $1C, $64, $1C
	dc.b	SFXID_VanAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_VanMap
	dc.b	$59, $59

Enemy_Aerotank:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $0EC8, $0EA0, $0E60, $0C20, $0800, $000E ;0x0 (0x000256DA-0x000256F8, Entry count: 0x0000001E)
	dc.l	Battle_VanArt
	dc.w	$0A95, $0438, $00A8, $0090 ;0x0 (0x000256FC-0x00025704, Entry count: 0x00000008)
	dc.b	$40, $4C, $01, $32, $E2, $66, $0C, $4C ;0x0 (0x00025704-0x0002570C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $64, $1C, $64, $1C
	dc.b	SFXID_VanAttack, SFXID_ArmyEyeAttack
	dc.l	Battle_VanMap
	dc.b	$5A, $5A

Enemy_Orangah:
	dc.w	$0000, $0EEE, $0E6A, $0C48, $0A26, $0804, $0400, $00AA, $0088, $0066, $0044, $0022, $0002, $0A8E, $000E ;0x0 (0x0002571A-0x00025738, Entry count: 0x0000001E)
	dc.l	Battle_OrangahArt
	dc.w	$06F2, $00C1, $005E, $0006 ;0x0 (0x0002573C-0x00025744, Entry count: 0x00000008)
	dc.b	$20, $62, $00, $80, $09, $4C, $00, $CC ;0x0 (0x00025744-0x0002574C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_SpinnerAttack
	dc.l	Battle_OrangahMap
	dc.b	$5B, $5B

Enemy_Orangoo:
	dc.w	$0000, $0000, $0EA6, $0C84, $0A62, $0840, $0400, $008E, $006C, $004A, $0028, $0006, $0004, $0E8C, $000E ;0x0 (0x0002575A-0x00025778, Entry count: 0x0000001E)
	dc.l	Battle_OrangahArt
	dc.w	$0882, $00EF, $0062, $0006 ;0x0 (0x0002577C-0x00025784, Entry count: 0x00000008)
	dc.b	$20, $67, $00, $9B, $00, $00, $00, $CC ;0x0 (0x00025784-0x0002578C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_SpinnerAttack
	dc.l	Battle_OrangahMap
	dc.b	$5C, $5C

Enemy_Ohx:
	dc.w	$0000, $0000, $0E8E, $0A6E, $064E, $022E, $0026, $0ACA, $08E8, $0686, $046A, $0242, $0020, $0ECC, $000E ;0x0 (0x0002579A-0x000257B8, Entry count: 0x0000001E)
	dc.l	Battle_OrangahArt
	dc.w	$0A7C, $00FC, $0068, $0006 ;0x0 (0x000257BC-0x000257C4, Entry count: 0x00000008)
	dc.b	$20, $53, $00, $BF, $0E, $19, $0C, $CC ;0x0 (0x000257C4-0x000257CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $6C, $00, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_SpinnerAttack
	dc.l	Battle_OrangahMap
	dc.b	$5D, $5D

Enemy_Mastodon:
	dc.w	$0EEE, $0000, $000E, $0AAC, $088A, $0668, $0446, $0224, $0008, $026E, $0ACA, $08A8, $0686, $066C, $044A ;0x0 (0x000257DA-0x000257F8, Entry count: 0x0000001E)
	dc.l	Battle_MastodonArt
	dc.w	$075F, $0348, $0089, $003F ;0x0 (0x000257FC-0x00025804, Entry count: 0x00000008)
	dc.b	$20, $2B, $00, $BB, $00, $00, $00, $CC ;0x0 (0x00025804-0x0002580C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_MastodonMap
	dc.b	$5E, $5E

Enemy_Eletusk:
	dc.w	$0EEE, $0000, $0008, $0AA6, $0884, $0662, $0440, $0220, $0206, $026E, $0ACC, $08CC, $06AA, $084A, $0628 ;0x0 (0x0002581A-0x00025838, Entry count: 0x0000001E)
	dc.l	Battle_MastodonArt
	dc.w	$09B8, $038B, $00A7, $0045 ;0x0 (0x0002583C-0x00025844, Entry count: 0x00000008)
	dc.b	$20, $41, $00, $BB, $00, $00, $00, $B2 ;0x0 (0x00025844-0x0002584C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_MastodonMap
	dc.b	$5F, $5F

Enemy_Elephant:
	dc.b	$0E, $EE, $00, $00, $00, $EE, $08, $CC, $06, $AA, $04, $88, $02, $66, $00, $44
	dc.b	$02, $0C, $0A, $AE, $0E, $CE, $0C, $AC, $0A, $8A, $04, $8E, $02, $6A ;0x0 (0x0002585A-0x00025878, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_MastodonArt
	dc.b	$0D, $3F, $03, $96, $00, $C1, $00, $46, $20, $41, $00, $BB, $00, $00, $00, $B2
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_MastodonMap
	dc.b	$60, $60

Enemy_DezoOwl:
	dc.w	$0EEE, $0AA8, $0662, $0ACA, $08A8, $0486, $0264, $0042, $0020, $0000, $008C, $006A, $0048, $000A, $0024 ;0x0 (0x0002589A-0x000258B8, Entry count: 0x0000001E)
	dc.l	Battle_DezoOwlArt
	dc.w	$0728, $0074, $0069, $0024 ;0x0 (0x000258BC-0x000258C4, Entry count: 0x00000008)
	dc.b	$20, $28, $00, $70, $00, $00, $00, $B2 ;0x0 (0x000258C4-0x000258CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $7C, $00, $7C, $00
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_DezoOwlMap
	dc.b	$61, $61

Enemy_Skytiara:
	dc.w	$0EEE, $0ACA, $08A2, $08CA, $08AA, $068A, $046A, $0248, $0024, $0000, $048E, $026E, $004E, $000C, $0028 ;0x0 (0x000258DA-0x000258F8, Entry count: 0x0000001E)
	dc.l	Battle_DezoOwlArt
	dc.w	$08EB, $011F, $0081, $003E ;0x0 (0x000258FC-0x00025904, Entry count: 0x00000008)
	dc.b	$20, $44, $00, $7A, $05, $19, $10, $CC ;0x0 (0x00025904-0x0002590C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $7C, $00, $7C, $00
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_DezoOwlMap
	dc.b	$62, $62

Enemy_Owltalon:
	dc.w	$0EEE, $0ACC, $0688, $0EAC, $0C8A, $0A86, $0864, $0642, $0420, $0000, $008E, $006E, $004E, $000E, $000A ;0x0 (0x0002591A-0x00025938, Entry count: 0x0000001E)
	dc.l	Battle_DezoOwlArt
	dc.w	$0A8D, $018D, $008D, $004F ;0x0 (0x0002593C-0x00025944, Entry count: 0x00000008)
	dc.b	$20, $5D, $00, $91, $00, $00, $00, $7F ;0x0 (0x00025944-0x0002594C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $7C, $00, $7C, $00
	dc.b	SFXID_LocustAttack, SFXID_LocustAttack
	dc.l	Battle_DezoOwlMap
	dc.b	$63, $63

Enemy_Rabbit:
	dc.w	$0EEC, $0CCA, $0AA8, $0886, $0664, $0442, $0220, $008E, $004C, $0A8C, $086A, $0648, $0426, $0000, $0000 ;0x0 (0x0002595A-0x00025978, Entry count: 0x0000001E)
	dc.l	Battle_RabbitArt
	dc.w	$06BC, $010E, $0046, $0006 ;0x0 (0x0002597C-0x00025984, Entry count: 0x00000008)
	dc.b	$20, $4B, $00, $99, $04, $33, $0C, $66 ;0x0 (0x00025984-0x0002598C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $64, $0C, $64, $0C
	dc.b	SFXID_BlasterAttack, SFXID_AmoebaAttack
	dc.l	Battle_RabbitMap
	dc.b	$64, $64

Enemy_Rabitta:
	dc.w	$0EEE, $0CCE, $0AAE, $088C, $066A, $0448, $0226, $0648, $0426, $08A8, $0686, $0464, $0242, $0000, $0000 ;0x0 (0x0002599A-0x000259B8, Entry count: 0x0000001E)
	dc.l	Battle_RabbitArt
	dc.w	$08BE, $016C, $006C, $000A ;0x0 (0x000259BC-0x000259C4, Entry count: 0x00000008)
	dc.b	$20, $50, $00, $A7, $11, $33, $04, $66 ;0x0 (0x000259C4-0x000259CC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $07, $64, $0C, $64, $0C
	dc.b	SFXID_BlasterAttack, SFXID_AmoebaAttack
	dc.l	Battle_RabbitMap
	dc.b	$65, $65

Enemy_Rabitgut:
	dc.b	$0C, $EE, $0A, $EE, $08, $CC, $06, $AA, $04, $88, $02, $66, $00, $44, $04, $AE
	dc.b	$02, $0A, $08, $8C, $06, $6A, $04, $48, $02, $26, $08, $42, $06, $20 ;0x0 (0x000259DA-0x000259F8, Entry count: 0x0000001E) [Unknown data]
	dc.l	Battle_RabbitArt
	dc.b	$0B, $04, $01, $7C, $00, $74, $00, $10, $20, $55, $00, $CB, $00, $00, $00, $66
	dc.b	$0F, $07, $64, $0C, $64, $0C
	dc.b	SFXID_BlasterAttack, SFXID_AmoebaAttack
	dc.l	Battle_RabbitMap
	dc.b	$66, $66

Enemy_Wrestler:
	dc.w	$08CC, $06AA, $0488, $0266, $0044, $0022, $0EEE, $0888, $0000, $0848, $0626, $0404, $0202, $0642, $0420 ;0x0 (0x00025A1A-0x00025A38, Entry count: 0x0000001E)
	dc.l	Battle_WresterArt
	dc.w	$0B8B, $007C, $005A, $0008 ;0x0 (0x00025A3C-0x00025A44, Entry count: 0x00000008)
	dc.b	$60, $3A, $00, $B8, $03, $66, $0C, $CC ;0x0 (0x00025A44-0x00025A4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_WresterMap
	dc.b	$67, $67

Enemy_Sakoff:
	dc.w	$06C8, $04A6, $0284, $0062, $0040, $0020, $0EEE, $0888, $0CA0, $0A66, $0844, $0622, $0400, $0664, $0442 ;0x0 (0x00025A5A-0x00025A78, Entry count: 0x0000001E)
	dc.l	Battle_WresterArt
	dc.w	$0FE8, $00A6, $006B, $000F ;0x0 (0x00025A7C-0x00025A84, Entry count: 0x00000008)
	dc.b	$60, $58, $00, $C6, $04, $33, $0C, $CC ;0x0 (0x00025A84-0x00025A8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_WresterMap
	dc.b	$68, $68

Enemy_Mesoman:
	dc.w	$0AA8, $0886, $0664, $0442, $0220, $0220, $0EEE, $0888, $0000, $026E, $000A, $0006, $0002, $0060, $0040 ;0x0 (0x00025A9A-0x00025AB8, Entry count: 0x0000001E)
	dc.l	Battle_WresterArt
	dc.w	$1281, $00BD, $0078, $0014 ;0x0 (0x00025ABC-0x00025AC4, Entry count: 0x00000008)
	dc.b	$60, $67, $00, $D7, $05, $66, $14, $33 ;0x0 (0x00025AC4-0x00025ACC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $0C, $54, $0C
	dc.b	SFXID_Whip, SFXID_Whip
	dc.l	Battle_WresterMap
	dc.b	$69, $69

Enemy_Lung:
	dc.w	$0000, $0002, $0024, $0046, $008C, $06CE, $0CEE, $0EEE, $0222, $0666, $0E02, $0EE0, $080E, $000A, $0000 ;0x0 (0x00025ADA-0x00025AF8, Entry count: 0x0000001E)
	dc.l	Battle_LungArt
	dc.w	$1833, $00A8, $00D1, $002F ;0x0 (0x00025AFC-0x00025B04, Entry count: 0x00000008)
	dc.b	$60, $5A, $01, $24, $F5, $4C, $04, $19 ;0x0 (0x00025B04-0x00025B0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_LungMap
	dc.b	$6A, $6A

Enemy_Glosword:
	dc.w	$0000, $0200, $0420, $0640, $0C80, $0EC6, $0EEC, $0EEE, $0202, $0A0A, $008E, $00EC, $08EE, $00E0, $0000 ;0x0 (0x00025B1A-0x00025B38, Entry count: 0x0000001E)
	dc.l	Battle_LungArt
	dc.w	$16DC, $00CE, $00E5, $0017 ;0x0 (0x00025B3C-0x00025B44, Entry count: 0x00000008)
	dc.b	$60, $71, $01, $4A, $11, $33, $08, $33 ;0x0 (0x00025B44-0x00025B4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_LungMap
	dc.b	$6B, $6B

Enemy_Desrona:
	dc.w	$0000, $0000, $0222, $0444, $0666, $0888, $0AAA, $0EEE, $0026, $006A, $000A, $024E, $0C60, $0A00, $0000 ;0x0 (0x00025B5A-0x00025B78, Entry count: 0x0000001E)
	dc.l	Battle_LungArt
	dc.w	$1AF1, $00E7, $00C0, $0017 ;0x0 (0x00025B7C-0x00025B84, Entry count: 0x00000008)
	dc.b	$60, $80, $01, $22, $13, $19, $14, $B2 ;0x0 (0x00025B84-0x00025B8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $60, $0C, $60, $0C
	dc.b	SFXID_LocustAttack, SFXID_SpinnerAttack
	dc.l	Battle_LungMap
	dc.b	$6C, $6C

Enemy_Darkside:
	dc.w	$0EEE, $0A40, $0820, $0600, $0400, $00EE, $000E, $0004, $00EA, $0AC0, $0680, $0020, $0068, $0626, $0000 ;0x0 (0x00025B9A-0x00025BB8, Entry count: 0x0000001E)
	dc.l	Battle_DarksideArt
	dc.w	$0F8A, $00A2, $009A, $000D ;0x0 (0x00025BBC-0x00025BC4, Entry count: 0x00000008)
	dc.b	$60, $5F, $01, $1B, $00, $00, $00, $19 ;0x0 (0x00025BC4-0x00025BCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $08, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_DarksideMap
	dc.b	$6D, $6D

Enemy_MrDeath:
	dc.w	$0EEE, $0A8A, $0646, $0424, $0202, $00EE, $00E0, $0040, $022A, $0008, $0004, $0020, $0068, $0626, $0000 ;0x0 (0x00025BDA-0x00025BF8, Entry count: 0x0000001E)
	dc.l	Battle_DarksideArt
	dc.w	$134E, $00C5, $00AE, $000F ;0x0 (0x00025BFC-0x00025C04, Entry count: 0x00000008)
	dc.b	$60, $6C, $01, $44, $00, $00, $00, $19 ;0x0 (0x00025C04-0x00025C0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $08, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_DarksideMap
	dc.b	$6E, $6E

Enemy_Shadow:
	dc.w	$0EEE, $0ECC, $0A66, $0844, $0622, $00EE, $000E, $0004, $08A0, $0860, $0420, $0020, $0068, $0626, $0000 ;0x0 (0x00025C1A-0x00025C38, Entry count: 0x0000001E)
	dc.l	Battle_DarksideArt
	dc.w	$1685, $00E3, $00BE, $0011 ;0x0 (0x00025C3C-0x00025C44, Entry count: 0x00000008)
	dc.b	$60, $7D, $01, $6D, $00, $00, $00, $19 ;0x0 (0x00025C44-0x00025C4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $08, $6C, $00
	dc.b	SFXID_NeifirstAttack, SFXID_NeifirstAttack
	dc.l	Battle_DarksideMap
	dc.b	$6F, $6F

Enemy_Mystcape:
	dc.w	$0000, $0224, $0668, $088A, $0DDE, $0844, $0C88, $0ECC, $0EEE, $0042, $0286, $06EA, $00EE, $000E, $0002 ;0x0 (0x00025C5A-0x00025C78, Entry count: 0x0000001E)
	dc.l	Battle_MystcapeArt
	dc.w	$0D3E, $0074, $005C, $0010 ;0x0 (0x00025C7C-0x00025C84, Entry count: 0x00000008)
	dc.b	$60, $3F, $00, $A3, $0F, $66, $00, $4C ;0x0 (0x00025C84-0x00025C8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_MystcapeMap
	dc.b	$70, $70

Enemy_Illusnst:
	dc.w	$0000, $0020, $0064, $0086, $00C8, $0444, $0888, $0CCC, $0CEE, $0004, $0206, $040A, $000E, $0E44, $0000 ;0x0 (0x00025C9A-0x00025CB8, Entry count: 0x0000001E)
	dc.l	Battle_MystcapeArt
	dc.w	$1148, $009B, $006B, $0012 ;0x0 (0x00025CBC-0x00025CC4, Entry count: 0x00000008)
	dc.b	$60, $50, $00, $CC, $05, $33, $14, $B2 ;0x0 (0x00025CC4-0x00025CCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_MystcapeMap
	dc.b	$71, $71

Enemy_Imagiomg:
	dc.w	$0000, $0206, $084A, $0A8C, $0ECE, $0244, $0688, $0ACC, $0EEE, $0006, $022A, $046E, $0EE0, $00E0, $0002 ;0x0 (0x00025CDA-0x00025CF8, Entry count: 0x0000001E)
	dc.l	Battle_MystcapeArt
	dc.w	$163E, $00DF, $00B1, $0012 ;0x0 (0x00025CFC-0x00025D04, Entry count: 0x00000008)
	dc.b	$60, $7B, $00, $EE, $00, $00, $00, $4C ;0x0 (0x00025D04-0x00025D0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $5C, $0C, $5C, $0C
	dc.b	SFXID_VanAttack, SFXID_VanAttack
	dc.l	Battle_MystcapeMap
	dc.b	$72, $72

Enemy_ArchDrgn:
	dc.w	$0000, $0224, $0446, $0668, $088A, $0AAC, $0EEE, $0ACA, $0686, $00CE, $008E, $004E, $002E, $0008, $008E ;0x0 (0x00025D1A-0x00025D38, Entry count: 0x0000001E)
	dc.l	Battle_ArchDrgnArt
	dc.w	$2570, $009F, $00FE, $0043 ;0x0 (0x00025D3C-0x00025D44, Entry count: 0x00000008)
	dc.b	$60, $64, $01, $14, $00, $00, $00, $7F ;0x0 (0x00025D44-0x00025D4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $68, $04, $68, $04
	dc.b	SFXID_TerakiteAttack, SFXID_TerakiteAttack
	dc.l	Battle_ArchDrgnMap
	dc.b	$73, $73

Enemy_Frdragon:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0EEE, $0AAA, $0666, $00CE, $008E, $004E, $002E, $0008, $008E ;0x0 (0x00025D5A-0x00025D78, Entry count: 0x0000001E)
	dc.l	Battle_ArchDrgnArt
	dc.w	$20A3, $00D6, $00DF, $003F ;0x0 (0x00025D7C-0x00025D84, Entry count: 0x00000008)
	dc.b	$60, $76, $01, $06, $00, $00, $00, $66 ;0x0 (0x00025D84-0x00025D8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $68, $04, $68, $04
	dc.b	SFXID_TerakiteAttack, SFXID_TerakiteAttack
	dc.l	Battle_ArchDrgnMap
	dc.b	$74, $74

Enemy_Mxdragon:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $0EEE, $0ACA, $0686, $00CE, $008E, $004E, $002E, $0008, $008E ;0x0 (0x00025D9A-0x00025DB8, Entry count: 0x0000001E)
	dc.l	Battle_ArchDrgnArt
	dc.w	$1A5B, $00C5, $00D5, $003B ;0x0 (0x00025DBC-0x00025DC4, Entry count: 0x00000008)
	dc.b	$60, $6C, $01, $03, $00, $00, $00, $99 ;0x0 (0x00025DC4-0x00025DCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $68, $04, $68, $04
	dc.b	SFXID_TerakiteAttack, SFXID_TerakiteAttack
	dc.l	Battle_ArchDrgnMap
	dc.b	$75, $75

Enemy_Firefall:
	dc.w	$0EEE, $08EE, $00CE, $00AE, $008E, $006E, $002E, $000A, $0006, $0002, $04A0, $0480, $0260, $0040, $0000 ;0x0 (0x00025DDA-0x00025DF8, Entry count: 0x0000001E)
	dc.l	Battle_FirefallArt
	dc.w	$20FE, $00B5, $00C3, $0066 ;0x0 (0x00025DFC-0x00025E04, Entry count: 0x00000008)
	dc.b	$60, $62, $01, $00, $EB, $CC, $08, $19 ;0x0 (0x00025E04-0x00025E0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $0C, $78, $0C
	dc.b	SFXID_FireAntAttack, SFXID_TerakiteAttack
	dc.l	Battle_FirefallMap
	dc.b	$76, $76

Enemy_Vorcano:
	dc.w	$0EEE, $0AE4, $08C0, $06C0, $04C0, $02A0, $0080, $0060, $0040, $0020, $006E, $000E, $000C, $0008, $0000 ;0x0 (0x00025E1A-0x00025E38, Entry count: 0x0000001E)
	dc.l	Battle_FirefallArt
	dc.w	$2771, $00DA, $00D7, $0076 ;0x0 (0x00025E3C-0x00025E44, Entry count: 0x00000008)
	dc.b	$60, $78, $01, $28, $E1, $CC, $08, $33 ;0x0 (0x00025E44-0x00025E4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $0C, $78, $0C
	dc.b	SFXID_FireAntAttack, SFXID_TerakiteAttack
	dc.l	Battle_FirefallMap
	dc.b	$77, $77

Enemy_Kinglava:
	dc.w	$0EEE, $0EA8, $0E6A, $0E48, $0E26, $0E04, $0C00, $0A00, $0600, $0400, $000E, $000A, $0006, $0002, $0000 ;0x0 (0x00025E5A-0x00025E78, Entry count: 0x0000001E)
	dc.l	Battle_FirefallArt
	dc.w	$3678, $00F5, $00F8, $0081 ;0x0 (0x00025E7C-0x00025E84, Entry count: 0x00000008)
	dc.b	$60, $87, $01, $4D, $DD, $CC, $04, $66 ;0x0 (0x00025E84-0x00025E8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $0C, $78, $0C
	dc.b	SFXID_FireAntAttack, SFXID_TerakiteAttack
	dc.l	Battle_FirefallMap
	dc.b	$78, $78

Enemy_Wizard:
	dc.w	$0EEE, $022E, $0C42, $0888, $0666, $0444, $0222, $000C, $000A, $0008, $0006, $0004, $0002, $0CA0, $0000 ;0x0 (0x00025E9A-0x00025EB8, Entry count: 0x0000001E)
	dc.l	Battle_WizardArt
	dc.w	$264D, $0097, $00DA, $0008 ;0x0 (0x00025EBC-0x00025EC4, Entry count: 0x00000008)
	dc.b	$60, $4E, $01, $60, $F1, $CC, $04, $4C ;0x0 (0x00025EC4-0x00025ECC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $10, $78, $10
	dc.b	SFXID_PoleziAttack, SFXID_TerakiteAttack
	dc.l	Battle_WizardMap
	dc.b	$79, $79

Enemy_Capeone:
	dc.w	$0EEE, $0CA0, $06A0, $08AA, $0688, $0466, $0244, $0A80, $0860, $0640, $0420, $0200, $0000, $0CE8, $0000 ;0x0 (0x00025EDA-0x00025EF8, Entry count: 0x0000001E)
	dc.l	Battle_WizardArt
	dc.w	$2C87, $00CA, $0100, $0010 ;0x0 (0x00025EFC-0x00025F04, Entry count: 0x00000008)
	dc.b	$60, $5A, $01, $66, $E7, $99, $04, $66 ;0x0 (0x00025F04-0x00025F0C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $10, $78, $10
	dc.b	SFXID_PoleziAttack, SFXID_TerakiteAttack
	dc.l	Battle_WizardMap
	dc.b	$7A, $7A

Enemy_Fiend:
	dc.w	$0EEE, $06C0, $022E, $088A, $0668, $0446, $0224, $04A0, $0280, $0060, $0040, $0020, $0000, $066E, $0000 ;0x0 (0x00025F1A-0x00025F38, Entry count: 0x0000001E)
	dc.l	Battle_WizardArt
	dc.w	$2FD8, $00EC, $0112, $0010 ;0x0 (0x00025F3C-0x00025F44, Entry count: 0x00000008)
	dc.b	$60, $5A, $01, $6C, $D7, $66, $04, $4C ;0x0 (0x00025F44-0x00025F4C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $78, $10, $78, $10
	dc.b	SFXID_PoleziAttack, SFXID_TerakiteAttack
	dc.l	Battle_WizardMap
	dc.b	$7B, $7B

Enemy_Neifirst:
	dc.w	$0AE0, $0EC0, $0CA0, $0A80, $0860, $0640, $0420, $0E44, $0E22, $0A00, $0800, $0EEE, $0600, $0400, $0000 ;0x0 (0x00025F5A-0x00025F78, Entry count: 0x0000001E)
	dc.l	Battle_NeifirstArt
	dc.w	$0457, $0457, $00B2, $000A ;0x0 (0x00025F7C-0x00025F84, Entry count: 0x00000008)
	dc.b	$20, $5C, $04, $4C, $E1, $66, $08, $00 ;0x0 (0x00025F84-0x00025F8C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $54, $14, $54, $14
	dc.b	SFXID_NeifirstAttack, SFXID_Whip
	dc.l	Battle_NeifirstMap
	dc.b	$7C, $7C

Enemy_DarkFrce:
	dc.w	$0000, $0220, $0440, $0660, $0880, $0AA0, $0CC0, $0EE0, $0EE8, $0EEE, $088E, $0620, $0C80, $0008, $0000 ;0x0 (0x00025F9A-0x00025FB8, Entry count: 0x0000001E)
	dc.l	Battle_DarkFrceArt
	dc.w	$08AE, $0000, $0140, $001E ;0x0 (0x00025FBC-0x00025FC4, Entry count: 0x00000008)
	dc.b	$60, $94, $0A, $00, $08, $FF, $00, $00 ;0x0 (0x00025FC4-0x00025FCC, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $6C, $00, $6C, $00
	dc.b	SFXID_WhistleAttack, SFXID_PoleziAttack
	dc.l	Battle_DarkFrceMap
	dc.b	$7D, $7D

Enemy_Mombrain:
	dc.w	$0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000 ;0x0 (0x00025FDA-0x00025FF8, Entry count: 0x0000001E)
	dc.l	Battle_MombrainArt
	dc.w	$0000, $0000, $00E4, $0080 ;0x0 (0x00025FFC-0x00026004, Entry count: 0x00000008)
	dc.b	$40, $C6, $09, $92, $AF, $B2, $00, $00 ;0x0 (0x00026004-0x0002600C, Entry count: 0x00000008) [Unknown data]
	dc.b	$0F, $03, $84, $00, $84, $00
	dc.b	SFXID_PulserAttack, SFXID_TerakiteAttack
	dc.l	Battle_MombrainMap
	dc.b	$7E, $7E
; ==========================================================================
