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
	dc.w	$068C, $046A, $0248, $0026, $0004, $0002, $0000, $06A6, $0484, $0240, $08AA, $0688, $0466, $0244, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	3	; EXPERIENCE POINTS
	dc.w	5	; MESETA
	dc.w	3	; ATTACK
	dc.w	4	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	23	; AGILITY (0-255)
	dc.w	9	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$01, $01	; Enemy id (twice?)
 
Enemy_ArmorAnt:
	dc.w	$08E8, $06A6, $0484, $0262, $0240, $0020, $0000, $006E, $004E, $002A, $0A8A, $0868, $0646, $0424, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	26	; EXPERIENCE POINTS
	dc.w	34	; MESETA
	dc.w	12	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	48	; AGILITY (0-255)
	dc.w	23	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$02, $02	; Enemy id (twice?)
 
Enemy_PinchAnt:
	dc.w	$0CCA, $0AA8, $0886, $0664, $0442, $0220, $0000, $086E, $030C, $0308, $068C, $046A, $0248, $0226, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	83	; EXPERIENCE POINTS
	dc.w	99	; MESETA
	dc.w	30	; ATTACK
	dc.w	27	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	65	; AGILITY (0-255)
	dc.w	45	; HITPOINTS
	dc.b	$E2	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $64, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$03, $03	; Enemy id (twice?)
 
Enemy_Mosquito:
	dc.w	$0000, $0020, $0064, $0086, $00A8, $00EC, $0204, $0428, $066C, $0802, $0C06, $0000, $0888, $0EEE, $0000	; Palette data
	dc.l	Battle_MosquitoArt	; Pointer to enemy art
	dc.w	3	; EXPERIENCE POINTS
	dc.w	5	; MESETA
	dc.w	2	; ATTACK
	dc.w	4	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	23	; AGILITY (0-255)
	dc.w	9	; HITPOINTS
	dc.b	$06	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $64, $0C	; Unknown data
	dc.b	SFXID_MosquitoAttack	; Attack sound id
	dc.b	SFXID_MosquitoAttack	; Tech sound id
	dc.l	Battle_MosquitoMap	; Sprite mappings
	dc.b	$04, $04	; Enemy id (twice?)
 
Enemy_Waspy:
	dc.w	$0000, $0024, $0066, $028A, $04AC, $08EE, $0040, $0262, $06C6, $0620, $0862, $0000, $0488, $0CEE, $0000	; Palette data
	dc.l	Battle_MosquitoArt	; Pointer to enemy art
	dc.w	15	; EXPERIENCE POINTS
	dc.w	27	; MESETA
	dc.w	13	; ATTACK
	dc.w	13	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	36	; AGILITY (0-255)
	dc.w	18	; HITPOINTS
	dc.b	$06	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_MosquitoAttack	; Attack sound id
	dc.b	SFXID_MosquitoAttack	; Tech sound id
	dc.l	Battle_MosquitoMap	; Sprite mappings
	dc.b	$05, $05	; Enemy id (twice?)
 
Enemy_Stinger:
	dc.w	$0000, $0220, $0664, $0886, $0AA8, $0EEC, $0604, $0A26, $0A6C, $0408, $060C, $0000, $0864, $0ECA, $0000	; Palette data
	dc.l	Battle_MosquitoArt	; Pointer to enemy art
	dc.w	78	; EXPERIENCE POINTS
	dc.w	99	; MESETA
	dc.w	31	; ATTACK
	dc.w	26	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	58	; AGILITY (0-255)
	dc.w	47	; HITPOINTS
	dc.b	$06	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_MosquitoAttack	; Attack sound id
	dc.b	SFXID_MosquitoAttack	; Tech sound id
	dc.l	Battle_MosquitoMap	; Sprite mappings
	dc.b	$06, $06	; Enemy id (twice?)
 
Enemy_Spinner:
	dc.w	$0EEE, $0EAC, $0C8A, $0A68, $0846, $0624, $0402, $06EE, $00EE, $02CE, $009E, $0220, $0440, $0660, $0000	; Palette data
	dc.l	Battle_SpinnerArt	; Pointer to enemy art
	dc.w	7	; EXPERIENCE POINTS
	dc.w	16	; MESETA
	dc.w	9	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	16	; AGILITY (0-255)
	dc.w	14	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_SpinnerAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_SpinnerMap	; Sprite mappings
	dc.b	$07, $07	; Enemy id (twice?)
 
Enemy_Vortex:
	dc.w	$0EEE, $0AEA, $08C8, $06A6, $0484, $0262, $0040, $004E, $000E, $000C, $000A, $0220, $0440, $0660, $0000	; Palette data
	dc.l	Battle_SpinnerArt	; Pointer to enemy art
	dc.w	40	; EXPERIENCE POINTS
	dc.w	77	; MESETA
	dc.w	29	; ATTACK
	dc.w	23	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	18	; AGILITY (0-255)
	dc.w	37	; HITPOINTS
	dc.b	$11	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_SpinnerAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_SpinnerMap	; Sprite mappings
	dc.b	$08, $08	; Enemy id (twice?)
 
Enemy_Whirly:
	dc.w	$0EEE, $0CCE, $0AAE, $088E, $066E, $024E, $000C, $0AEA, $06C6, $0484, $0060, $0220, $0440, $0660, $0000	; Palette data
	dc.l	Battle_SpinnerArt	; Pointer to enemy art
	dc.w	156	; EXPERIENCE POINTS
	dc.w	184	; MESETA
	dc.w	48	; ATTACK
	dc.w	39	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	28	; AGILITY (0-255)
	dc.w	76	; HITPOINTS
	dc.b	$09	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_SpinnerAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_SpinnerMap	; Sprite mappings
	dc.b	$09, $09	; Enemy id (twice?)
 
Enemy_Bee:
	dc.w	$0000, $0240, $0682, $0AC6, $0ECC, $0EEE, $000C, $0006, $0204, $0406, $082A, $0222, $0666, $0AAA, $0A8C	; Palette data
	dc.l	Battle_BeeArt	; Pointer to enemy art
	dc.w	5	; EXPERIENCE POINTS
	dc.w	9	; MESETA
	dc.w	4	; ATTACK
	dc.w	7	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	25	; AGILITY (0-255)
	dc.w	10	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$74, $00, $74, $00	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_BeeMap	; Sprite mappings
	dc.b	$0A, $0A	; Enemy id (twice?)
 
Enemy_Buzzer:
	dc.w	$0000, $0226, $066A, $08AC, $0CCE, $0EEE, $0864, $0620, $0402, $0644, $0A68, $0222, $0666, $0AAA, $0C8A	; Palette data
	dc.l	Battle_BeeArt	; Pointer to enemy art
	dc.w	26	; EXPERIENCE POINTS
	dc.w	34	; MESETA
	dc.w	17	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	39	; AGILITY (0-255)
	dc.w	27	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$74, $00, $74, $00	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_BeeMap	; Sprite mappings
	dc.b	$0B, $0B	; Enemy id (twice?)
 
Enemy_Insecta:
	dc.w	$0000, $0244, $0688, $08CC, $0CEE, $0EEE, $044A, $0206, $0242, $0464, $0686, $0222, $0666, $0AAA, $0AEA	; Palette data
	dc.l	Battle_BeeArt	; Pointer to enemy art
	dc.w	111	; EXPERIENCE POINTS
	dc.w	139	; MESETA
	dc.w	41	; ATTACK
	dc.w	31	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	66	; AGILITY (0-255)
	dc.w	60	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$74, $00, $74, $00	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_BeeMap	; Sprite mappings
	dc.b	$0C, $0C	; Enemy id (twice?)
 
Enemy_Poisoner:
	dc.w	$0CCE, $08CA, $06A8, $0486, $0264, $0042, $006E, $0CCC, $0AAA, $0888, $0666, $0444, $0AAE, $066A, $0226	; Palette data
	dc.l	Battle_PoisonerArt	; Pointer to enemy art
	dc.w	5	; EXPERIENCE POINTS
	dc.w	19	; MESETA
	dc.w	4	; ATTACK
	dc.w	2	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	25	; AGILITY (0-255)
	dc.w	12	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_PoisonerMap	; Sprite mappings
	dc.b	$0D, $0D	; Enemy id (twice?)
 
Enemy_Spitkill:
	dc.w	$0EEE, $0CA8, $0A86, $0864, $0642, $0420, $006E, $0ACC, $08AA, $0688, $0466, $0244, $0AAE, $066A, $0226	; Palette data
	dc.l	Battle_PoisonerArt	; Pointer to enemy art
	dc.w	31	; EXPERIENCE POINTS
	dc.w	51	; MESETA
	dc.w	18	; ATTACK
	dc.w	13	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	42	; AGILITY (0-255)
	dc.w	30	; HITPOINTS
	dc.b	$05	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$18	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_PoisonerMap	; Sprite mappings
	dc.b	$0E, $0E	; Enemy id (twice?)
 
Enemy_Spitfang:
	dc.w	$0EAE, $0C8C, $0A6A, $0848, $0626, $0404, $0080, $0AA8, $0886, $0664, $0442, $0220, $0AAE, $066A, $0226	; Palette data
	dc.l	Battle_PoisonerArt	; Pointer to enemy art
	dc.w	182	; EXPERIENCE POINTS
	dc.w	194	; MESETA
	dc.w	49	; ATTACK
	dc.w	28	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	74	; AGILITY (0-255)
	dc.w	66	; HITPOINTS
	dc.b	$04	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_PoisonerMap	; Sprite mappings
	dc.b	$0F, $0F	; Enemy id (twice?)
 
Enemy_HitTail:
	dc.w	$0224, $0226, $0448, $066A, $0AAD, $0EEE, $0666, $0688, $0000, $0204, $0406, $060A, $0620, $0A60, $0000	; Palette data
	dc.l	Battle_HitTailArt	; Pointer to enemy art
	dc.w	49	; EXPERIENCE POINTS
	dc.w	88	; MESETA
	dc.w	32	; ATTACK
	dc.w	24	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	35	; AGILITY (0-255)
	dc.w	22	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $15, $58, $15	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_HitTailMap	; Sprite mappings
	dc.b	$10, $10	; Enemy id (twice?)
 
Enemy_Center:
	dc.w	$0024, $0246, $0468, $068A, $08AC, $0AEE, $0446, $0E20, $0EA0, $0420, $0864, $0CA8, $000E, $008E, $0000	; Palette data
	dc.l	Battle_HitTailArt	; Pointer to enemy art
	dc.w	127	; EXPERIENCE POINTS
	dc.w	139	; MESETA
	dc.w	48	; ATTACK
	dc.w	31	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	46	; AGILITY (0-255)
	dc.w	42	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	127	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $15, $59, $15	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_HitTailMap	; Sprite mappings
	dc.b	$11, $11	; Enemy id (twice?)
 
Enemy_Scaly:
	dc.w	$0222, $0444, $0666, $0AAA, $0CCC, $0EEE, $0664, $004E, $00CE, $0044, $0088, $00CC, $0006, $060E, $0000	; Palette data
	dc.l	Battle_HitTailArt	; Pointer to enemy art
	dc.w	357	; EXPERIENCE POINTS
	dc.w	337	; MESETA
	dc.w	75	; ATTACK
	dc.w	48	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	76	; AGILITY (0-255)
	dc.w	91	; HITPOINTS
	dc.b	$E7	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $15, $59, $15	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_HitTailMap	; Sprite mappings
	dc.b	$12, $12	; Enemy id (twice?)
 
Enemy_Froggy:
	dc.w	$0CE0, $0AC0, $08A0, $0680, $0460, $0240, $0020, $0022, $0044, $0066, $00CC, $020E, $020A, $0206, $0000	; Palette data
	dc.l	Battle_FroggyArt	; Pointer to enemy art
	dc.w	7	; EXPERIENCE POINTS
	dc.w	10	; MESETA
	dc.w	5	; ATTACK
	dc.w	7	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	48	; AGILITY (0-255)
	dc.w	12	; HITPOINTS
	dc.b	$F5	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_MosquitoAttack	; Tech sound id
	dc.l	Battle_FroggyMap	; Sprite mappings
	dc.b	$13, $13	; Enemy id (twice?)
 
Enemy_Toader:
	dc.w	$0E0A, $0C08, $0A06, $0804, $0602, $0400, $0200, $0240, $0460, $08A0, $0AC0, $020E, $020A, $0206, $0000	; Palette data
	dc.l	Battle_FroggyArt	; Pointer to enemy art
	dc.w	30	; EXPERIENCE POINTS
	dc.w	36	; MESETA
	dc.w	17	; ATTACK
	dc.w	13	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	72	; AGILITY (0-255)
	dc.w	24	; HITPOINTS
	dc.b	$12	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_FroggyMap	; Sprite mappings
	dc.b	$14, $14	; Enemy id (twice?)
 
Enemy_Squat:
	dc.w	$0EAE, $0C8C, $0A6A, $0848, $0626, $0404, $0202, $0400, $0600, $0A00, $0C00, $020E, $020A, $0206, $0000	; Palette data
	dc.l	Battle_FroggyArt	; Pointer to enemy art
	dc.w	266	; EXPERIENCE POINTS
	dc.w	180	; MESETA
	dc.w	46	; ATTACK
	dc.w	32	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	77	; AGILITY (0-255)
	dc.w	76	; HITPOINTS
	dc.b	$04	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_MosquitoAttack	; Tech sound id
	dc.l	Battle_FroggyMap	; Sprite mappings
	dc.b	$15, $15	; Enemy id (twice?)
 
Enemy_Carrier:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000	; Palette data
	dc.l	Battle_CarrierArt	; Pointer to enemy art
	dc.w	9	; EXPERIENCE POINTS
	dc.w	16	; MESETA
	dc.w	6	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	31	; AGILITY (0-255)
	dc.w	17	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_FireAntAttack	; Tech sound id
	dc.l	Battle_CarrierMap	; Sprite mappings
	dc.b	$16, $16	; Enemy id (twice?)
 
Enemy_Mushroom:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000	; Palette data
	dc.l	Battle_CarrierArt	; Pointer to enemy art
	dc.w	101	; EXPERIENCE POINTS
	dc.w	124	; MESETA
	dc.w	36	; ATTACK
	dc.w	29	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	43	; AGILITY (0-255)
	dc.w	54	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_CarrierMap	; Sprite mappings
	dc.b	$17, $17	; Enemy id (twice?)
 
Enemy_HeadRot:
	dc.w	$0002, $0204, $0406, $0608, $082A, $0A4C, $0C6E, $00EE, $00AE, $006A, $0026, $000E, $0008, $0004, $0000	; Palette data
	dc.l	Battle_CarrierArt	; Pointer to enemy art
	dc.w	311	; EXPERIENCE POINTS
	dc.w	254	; MESETA
	dc.w	57	; ATTACK
	dc.w	42	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	45	; AGILITY (0-255)
	dc.w	95	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_BlasterAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_CarrierMap	; Sprite mappings
	dc.b	$18, $18	; Enemy id (twice?)
 
Enemy_Whistle:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $04AC, $028A, $0A40, $000E	; Palette data
	dc.l	Battle_WhistleArt	; Pointer to enemy art
	dc.w	470	; EXPERIENCE POINTS
	dc.w	84	; MESETA
	dc.w	37	; ATTACK
	dc.w	5	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	68	; AGILITY (0-255)
	dc.w	82	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$66, $02, $6C, $08	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WhistleMap	; Sprite mappings
	dc.b	$19, $19	; Enemy id (twice?)
 
Enemy_Informer:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0008, $0CCA, $0EEC, $0EEE, $0EA0, $0EC8, $0CA8, $0A84, $0A40, $0E60	; Palette data
	dc.l	Battle_WhistleArt	; Pointer to enemy art
	dc.w	689	; EXPERIENCE POINTS
	dc.w	142	; MESETA
	dc.w	53	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	68	; AGILITY (0-255)
	dc.w	125	; HITPOINTS
	dc.b	$11	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$66, $02, $6C, $08	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WhistleMap	; Sprite mappings
	dc.b	$1A, $1A	; Enemy id (twice?)
 
Enemy_Tracer:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $008E, $00CE, $04AC, $028A, $0A40, $000E	; Palette data
	dc.l	Battle_WhistleArt	; Pointer to enemy art
	dc.w	2	; EXPERIENCE POINTS
	dc.w	2	; MESETA
	dc.w	9	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	10	; AGILITY (0-255)
	dc.w	40	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	255	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$66, $02, $6C, $08	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WhistleMap	; Sprite mappings
	dc.b	$1B, $1B	; Enemy id (twice?)
 
Enemy_Locust:
	dc.w	$0000, $0004, $0026, $0048, $006A, $008C, $08CE, $0EEE, $0222, $0468, $06AC, $0226, $044A, $0600, $0E62	; Palette data
	dc.l	Battle_LocustArt	; Pointer to enemy art
	dc.w	7	; EXPERIENCE POINTS
	dc.w	15	; MESETA
	dc.w	8	; ATTACK
	dc.w	5	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	23	; AGILITY (0-255)
	dc.w	10	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$4C, $0C, $4C, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_LocustMap	; Sprite mappings
	dc.b	$1C, $1C	; Enemy id (twice?)
 
Enemy_Locusta:
	dc.w	$0000, $0020, $0260, $04A0, $06C4, $08E8, $0AEC, $0EEE, $0220, $0660, $0CC0, $0444, $0888, $0004, $000A	; Palette data
	dc.l	Battle_LocustArt	; Pointer to enemy art
	dc.w	37	; EXPERIENCE POINTS
	dc.w	69	; MESETA
	dc.w	28	; ATTACK
	dc.w	18	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	40	; AGILITY (0-255)
	dc.w	26	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$4C, $0C, $4C, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_LocustMap	; Sprite mappings
	dc.b	$1D, $1D	; Enemy id (twice?)
 
Enemy_Fanbite:
	dc.w	$0000, $0402, $0622, $0844, $0A64, $0C84, $0ECA, $0EEE, $0002, $0026, $026A, $0664, $0CCA, $0204, $084C	; Palette data
	dc.l	Battle_LocustArt	; Pointer to enemy art
	dc.w	301	; EXPERIENCE POINTS
	dc.w	256	; MESETA
	dc.w	54	; ATTACK
	dc.w	20	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	60	; AGILITY (0-255)
	dc.w	80	; HITPOINTS
	dc.b	$13	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$14	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$4C, $0C, $4C, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_LocustMap	; Sprite mappings
	dc.b	$1E, $1E	; Enemy id (twice?)
 
Enemy_Amoeba:
	dc.w	$0200, $0400, $0622, $0844, $0A66, $0C88, $0000, $0000, $000E, $000A, $0006, $0000, $0000, $0000, $0000	; Palette data
	dc.l	Battle_AmoebaArt	; Pointer to enemy art
	dc.w	12	; EXPERIENCE POINTS
	dc.w	22	; MESETA
	dc.w	11	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	10	; AGILITY (0-255)
	dc.w	13	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_AmoebaAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_AmoebaMap	; Sprite mappings
	dc.b	$1F, $1F	; Enemy id (twice?)
 
Enemy_Jelly:
	dc.w	$0200, $0402, $0604, $0806, $0A08, $0C0A, $0000, $0000, $08B0, $000A, $0480, $0040, $0000, $0000, $0000	; Palette data
	dc.l	Battle_AmoebaArt	; Pointer to enemy art
	dc.w	37	; EXPERIENCE POINTS
	dc.w	67	; MESETA
	dc.w	26	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	20	; AGILITY (0-255)
	dc.w	42	; HITPOINTS
	dc.b	$05	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	25	; Chances of using tech instead of attack (0-255)
	dc.b	$10	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_AmoebaAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_AmoebaMap	; Sprite mappings
	dc.b	$20, $20	; Enemy id (twice?)
 
Enemy_Slugmess:
	dc.w	$0CE0, $0AC0, $08A0, $0680, $0460, $0240, $0020, $0022, $0044, $0066, $00CC, $020E, $020A, $0206, $0000	; Palette data
	dc.l	Battle_AmoebaArt	; Pointer to enemy art
	dc.w	231	; EXPERIENCE POINTS
	dc.w	218	; MESETA
	dc.w	55	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	20	; AGILITY (0-255)
	dc.w	96	; HITPOINTS
	dc.b	$0C	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	127	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_AmoebaAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_AmoebaMap	; Sprite mappings
	dc.b	$21, $21	; Enemy id (twice?)
 
Enemy_Polezi:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $01AC, $028A, $0A40, $000E	; Palette data
	dc.l	Battle_PoleziArt	; Pointer to enemy art
	dc.w	568	; EXPERIENCE POINTS
	dc.w	160	; MESETA
	dc.w	50	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	33	; AGILITY (0-255)
	dc.w	85	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_PoleziMap	; Sprite mappings
	dc.b	$22, $22	; Enemy id (twice?)
 
Enemy_Poleziax:
	dc.w	$0000, $0420, $0820, $0C20, $0E40, $0E60, $0EA0, $0EC8, $0EEE, $008E, $00CE, $0AAC, $028A, $0A40, $000E	; Palette data
	dc.l	Battle_PoleziArt	; Pointer to enemy art
	dc.w	855	; EXPERIENCE POINTS
	dc.w	240	; MESETA
	dc.w	87	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	50	; AGILITY (0-255)
	dc.w	118	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_PoleziMap	; Sprite mappings
	dc.b	$23, $23	; Enemy id (twice?)
 
Enemy_Poleziss:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0EA0, $0EC8, $0AAA, $0666, $0A40, $0E60	; Palette data
	dc.l	Battle_PoleziArt	; Pointer to enemy art
	dc.w	2	; EXPERIENCE POINTS
	dc.w	2	; MESETA
	dc.w	12	; ATTACK
	dc.w	5	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	10	; AGILITY (0-255)
	dc.w	20	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	255	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_PoleziMap	; Sprite mappings
	dc.b	$24, $24	; Enemy id (twice?)
 
Enemy_Leecher:
	dc.w	$0000, $0EEE, $06AA, $0488, $0266, $0044, $0022, $0020, $0A8E, $086C, $064A, $0428, $0440, $0880, $0CC0	; Palette data
	dc.l	Battle_LeecherArt	; Pointer to enemy art
	dc.w	47	; EXPERIENCE POINTS
	dc.w	49	; MESETA
	dc.w	20	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	44	; AGILITY (0-255)
	dc.w	26	; HITPOINTS
	dc.b	$EC	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_LeecherMap	; Sprite mappings
	dc.b	$25, $25	; Enemy id (twice?)
 
Enemy_Fang:
	dc.w	$0000, $0EEE, $0A8C, $086A, $0648, $0426, $0204, $0002, $066E, $044C, $022A, $0008, $000E, $008E, $00EE	; Palette data
	dc.l	Battle_LeecherArt	; Pointer to enemy art
	dc.w	137	; EXPERIENCE POINTS
	dc.w	144	; MESETA
	dc.w	37	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	63	; AGILITY (0-255)
	dc.w	46	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_LeecherMap	; Sprite mappings
	dc.b	$26, $26	; Enemy id (twice?)
 
Enemy_Python:
	dc.w	$0000, $0EEE, $0CCC, $0AAA, $0888, $0666, $0444, $0222, $0E8E, $0C6C, $0A4A, $0828, $06E6, $04C4, $0484	; Palette data
	dc.l	Battle_LeecherArt	; Pointer to enemy art
	dc.w	327	; EXPERIENCE POINTS
	dc.w	274	; MESETA
	dc.w	65	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	88	; AGILITY (0-255)
	dc.w	122	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_LeecherMap	; Sprite mappings
	dc.b	$27, $27	; Enemy id (twice?)
 
Enemy_S:
	dc.w	$0EC0, $0CA0, $0A80, $0860, $0640, $0420, $0024, $0046, $008A, $00CE, $08EE, $000A, $002C, $0EEE, $04A0	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	15	; EXPERIENCE POINTS
	dc.w	27	; MESETA
	dc.w	13	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	11	; AGILITY (0-255)
	dc.w	12	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$28, $28	; Enemy id (twice?)
 
Enemy_K:
	dc.w	$0AEC, $08CA, $06A8, $0486, $0264, $0042, $0004, $0026, $0048, $006A, $008C, $0424, $0646, $0EEE, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	62	; EXPERIENCE POINTS
	dc.w	112	; MESETA
	dc.w	33	; ATTACK
	dc.w	18	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	21	; AGILITY (0-255)
	dc.w	38	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$29, $29	; Enemy id (twice?)
 
Enemy_H:
	dc.w	$08CE, $06AE, $048E, $026E, $004E, $000E, $0226, $0448, $066A, $088C, $0AAE, $042E, $0000, $0000, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	152	; EXPERIENCE POINTS
	dc.w	274	; MESETA
	dc.w	55	; ATTACK
	dc.w	36	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	34	; AGILITY (0-255)
	dc.w	83	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$2A, $2A	; Enemy id (twice?)
 
Enemy_Pulser:
	dc.w	$0000, $0044, $0266, $0488, $06AA, $08CC, $0AEE, $0028, $024A, $046C, $08AE, $0062, $00A8, $02EA, $0000	; Palette data
	dc.l	Battle_PulserArt	; Pointer to enemy art
	dc.w	12	; EXPERIENCE POINTS
	dc.w	18	; MESETA
	dc.w	8	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	24	; AGILITY (0-255)
	dc.w	17	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_PulserAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_PulserMap	; Sprite mappings
	dc.b	$2B, $2B	; Enemy id (twice?)
 
Enemy_Blaster:
	dc.w	$0000, $0406, $0626, $0846, $0A66, $0C86, $0EC8, $0202, $0224, $0268, $04AE, $0062, $00A8, $02EA, $0000	; Palette data
	dc.l	Battle_PulserArt	; Pointer to enemy art
	dc.w	62	; EXPERIENCE POINTS
	dc.w	60	; MESETA
	dc.w	15	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	34	; AGILITY (0-255)
	dc.w	52	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_PulserAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_PulserMap	; Sprite mappings
	dc.b	$2C, $2C	; Enemy id (twice?)
 
Enemy_Blastoid:
	dc.w	$0000, $0640, $0662, $0684, $04A6, $04C8, $04EC, $0400, $0620, $0842, $0E86, $0062, $00A8, $02EA, $0000	; Palette data
	dc.l	Battle_PulserArt	; Pointer to enemy art
	dc.w	371	; EXPERIENCE POINTS
	dc.w	260	; MESETA
	dc.w	26	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	60	; AGILITY (0-255)
	dc.w	163	; HITPOINTS
	dc.b	$0C	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	153	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_PulserAttack	; Attack sound id
	dc.b	SFXID_BlasterAttack	; Tech sound id
	dc.l	Battle_PulserMap	; Sprite mappings
	dc.b	$2D, $2D	; Enemy id (twice?)
 
Enemy_RotWood:
	dc.w	$0EE8, $0EA0, $0C80, $0A60, $0840, $0620, $0400, $0000, $046C, $0024, $0004, $06EE, $00AA, $0066, $0022	; Palette data
	dc.l	Battle_RotWoodArt	; Pointer to enemy art
	dc.w	141	; EXPERIENCE POINTS
	dc.w	167	; MESETA
	dc.w	45	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	71	; AGILITY (0-255)
	dc.w	50	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_RotWoodMap	; Sprite mappings
	dc.b	$2E, $2E	; Enemy id (twice?)
 
Enemy_Blockhed:
	dc.w	$06CE, $0EAC, $028A, $0048, $0026, $0004, $0002, $0000, $0CC0, $0660, $0220, $0AAA, $0888, $0666, $0222	; Palette data
	dc.l	Battle_RotWoodArt	; Pointer to enemy art
	dc.w	261	; EXPERIENCE POINTS
	dc.w	293	; MESETA
	dc.w	59	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	90	; AGILITY (0-255)
	dc.w	80	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_RotWoodMap	; Sprite mappings
	dc.b	$2F, $2F	; Enemy id (twice?)
 
Enemy_Firia:
	dc.w	$06CE, $06AC, $0288, $0066, $0044, $0024, $0002, $0000, $06E6, $0280, $0040, $0C88, $0844, $0422, $0220	; Palette data
	dc.l	Battle_RotWoodArt	; Pointer to enemy art
	dc.w	306	; EXPERIENCE POINTS
	dc.w	358	; MESETA
	dc.w	68	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	98	; AGILITY (0-255)
	dc.w	109	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_RotWoodMap	; Sprite mappings
	dc.b	$30, $30	; Enemy id (twice?)
 
Enemy_Wolfang:
	dc.w	$0EEE, $0ECA, $0CA8, $0A86, $0864, $0642, $0420, $0000, $000C, $004E, $006E, $008E, $00EE, $0004, $000C	; Palette data
	dc.l	Battle_WolfangArt	; Pointer to enemy art
	dc.w	261	; EXPERIENCE POINTS
	dc.w	218	; MESETA
	dc.w	54	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	79	; AGILITY (0-255)
	dc.w	72	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_WolfangMap	; Sprite mappings
	dc.b	$31, $31	; Enemy id (twice?)
 
Enemy_Burnwolf:
	dc.w	$0EEE, $08CA, $06A8, $0486, $0264, $0042, $0020, $0000, $0C08, $0C68, $0C88, $0CA8, $0CC8, $0004, $000C	; Palette data
	dc.l	Battle_WolfangArt	; Pointer to enemy art
	dc.w	412	; EXPERIENCE POINTS
	dc.w	382	; MESETA
	dc.w	79	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	101	; AGILITY (0-255)
	dc.w	112	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_WolfangMap	; Sprite mappings
	dc.b	$32, $32	; Enemy id (twice?)
 
Enemy_Flarewlf:
	dc.w	$0EEE, $0CAC, $0A8C, $086C, $064C, $042A, $0208, $0000, $0660, $0680, $06A0, $06C0, $0AE4, $0004, $000C	; Palette data
	dc.l	Battle_WolfangArt	; Pointer to enemy art
	dc.w	471	; EXPERIENCE POINTS
	dc.w	455	; MESETA
	dc.w	85	; ATTACK
	dc.w	17	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	109	; AGILITY (0-255)
	dc.w	145	; HITPOINTS
	dc.b	$04	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$18	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_WolfangMap	; Sprite mappings
	dc.b	$33, $33	; Enemy id (twice?)
 
Enemy_PugHit:
	dc.w	$0000, $0400, $0620, $0842, $0A64, $0C86, $0EA8, $0ECA, $0EEE, $006E, $0000, $0246, $0468, $08AC, $0000	; Palette data
	dc.l	Battle_PugHitArt	; Pointer to enemy art
	dc.w	42	; EXPERIENCE POINTS
	dc.w	38	; MESETA
	dc.w	22	; ATTACK
	dc.w	17	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	47	; AGILITY (0-255)
	dc.w	21	; HITPOINTS
	dc.b	$0E	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	25	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_PugHitMap	; Sprite mappings
	dc.b	$34, $34	; Enemy id (twice?)
 
Enemy_PugBrat:
	dc.w	$0000, $0004, $0006, $0028, $004A, $026C, $048E, $08CE, $0EEE, $0C44, $0200, $0652, $0000, $0CA8, $0000	; Palette data
	dc.l	Battle_PugHitArt	; Pointer to enemy art
	dc.w	206	; EXPERIENCE POINTS
	dc.w	115	; MESETA
	dc.w	59	; ATTACK
	dc.w	47	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	93	; AGILITY (0-255)
	dc.w	88	; HITPOINTS
	dc.b	$0F	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_PugHitMap	; Sprite mappings
	dc.b	$35, $35	; Enemy id (twice?)
 
Enemy_PugKill:
	dc.w	$0000, $0002, $0024, $0246, $0268, $0288, $02AC, $0AEE, $0EEE, $02A0, $0222, $0606, $0000, $0E6E, $0000	; Palette data
	dc.l	Battle_PugHitArt	; Pointer to enemy art
	dc.w	302	; EXPERIENCE POINTS
	dc.w	282	; MESETA
	dc.w	69	; ATTACK
	dc.w	17	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	101	; AGILITY (0-255)
	dc.w	98	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_PugHitMap	; Sprite mappings
	dc.b	$36, $36	; Enemy id (twice?)
 
Enemy_S2:
	dc.w	$040E, $040C, $040A, $0408, $0406, $0404, $06AE, $048C, $026A, $0048, $08CC, $06AA, $0488, $0266, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	22	; EXPERIENCE POINTS
	dc.w	38	; MESETA
	dc.w	16	; ATTACK
	dc.w	14	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	27	; AGILITY (0-255)
	dc.w	35	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$70, $00, $70, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$37, $37	; Enemy id (twice?)
 
Enemy_S3:
	dc.w	$040E, $040C, $040A, $0408, $0406, $0404, $008E, $006C, $004A, $0028, $0AA8, $0886, $0664, $0442, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	65	; EXPERIENCE POINTS
	dc.w	107	; MESETA
	dc.w	32	; ATTACK
	dc.w	37	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	49	; AGILITY (0-255)
	dc.w	58	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$70, $00, $70, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$38, $38	; Enemy id (twice?)
 
Enemy_S4:
	dc.w	$040E, $040C, $040A, $0408, $0406, $0404, $048C, $086A, $0648, $0426, $00EA, $00C8, $00A6, $0086, $0000	; Palette data
	dc.l	Battle_AntArt	; Pointer to enemy art
	dc.w	115	; EXPERIENCE POINTS
	dc.w	205	; MESETA
	dc.w	40	; ATTACK
	dc.w	50	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	64	; AGILITY (0-255)
	dc.w	119	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$74, $00, $74, $00	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_AntMap	; Sprite mappings
	dc.b	$39, $39	; Enemy id (twice?)
 
Enemy_Wireface:
	dc.w	$0EEE, $0EEC, $0CCA, $0AA8, $0886, $0664, $0442, $0000, $000A, $0800, $0E00, $0E80, $04EE, $008E, $024E	; Palette data
	dc.l	Battle_WirefaceArt	; Pointer to enemy art
	dc.w	718	; EXPERIENCE POINTS
	dc.w	213	; MESETA
	dc.w	55	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	67	; AGILITY (0-255)
	dc.w	137	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_WirefaceMap	; Sprite mappings
	dc.b	$3A, $3A	; Enemy id (twice?)
 
Enemy_Wirehead:
	dc.w	$0EEE, $0ECE, $0CAC, $0A8A, $0868, $0646, $0424, $0000, $0060, $0800, $0E00, $0E80, $04EE, $00C8, $0294	; Palette data
	dc.l	Battle_WirefaceArt	; Pointer to enemy art
	dc.w	1014	; EXPERIENCE POINTS
	dc.w	213	; MESETA
	dc.w	67	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	78	; AGILITY (0-255)
	dc.w	159	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_WirefaceMap	; Sprite mappings
	dc.b	$3B, $3B	; Enemy id (twice?)
 
Enemy_PodHead:
	dc.w	$0EEE, $0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0000, $0808, $0800, $0E00, $0E80, $0ECE, $0EAE, $0C4C	; Palette data
	dc.l	Battle_WirefaceArt	; Pointer to enemy art
	dc.w	1149	; EXPERIENCE POINTS
	dc.w	319	; MESETA
	dc.w	80	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	85	; AGILITY (0-255)
	dc.w	176	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_WirefaceMap	; Sprite mappings
	dc.b	$3C, $3C	; Enemy id (twice?)
 
Enemy_Terakite:
	dc.w	$0CCA, $0AA8, $0886, $0664, $0442, $0220, $0EEE, $08EE, $0266, $000A, $0008, $004E, $048E, $08CE, $046E	; Palette data
	dc.l	Battle_TerakiteArt	; Pointer to enemy art
	dc.w	266	; EXPERIENCE POINTS
	dc.w	258	; MESETA
	dc.w	58	; ATTACK
	dc.w	77	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	62	; AGILITY (0-255)
	dc.w	67	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $54, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_TerakiteMap	; Sprite mappings
	dc.b	$3D, $3D	; Enemy id (twice?)
 
Enemy_Reptile:
	dc.w	$0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0EEE, $008E, $002A, $086C, $064A, $0A8E, $0666, $0AAA, $0888	; Palette data
	dc.l	Battle_TerakiteArt	; Pointer to enemy art
	dc.w	387	; EXPERIENCE POINTS
	dc.w	440	; MESETA
	dc.w	79	; ATTACK
	dc.w	80	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	70	; AGILITY (0-255)
	dc.w	92	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	127	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $54, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_TerakiteMap	; Sprite mappings
	dc.b	$3E, $3E	; Enemy id (twice?)
 
Enemy_KiteDrgn:
	dc.w	$0CCE, $0AAC, $088A, $0668, $0446, $0224, $0EEE, $06C0, $0040, $040E, $000A, $062E, $0CA0, $0EE8, $0A80	; Palette data
	dc.l	Battle_TerakiteArt	; Pointer to enemy art
	dc.w	351	; EXPERIENCE POINTS
	dc.w	475	; MESETA
	dc.w	84	; ATTACK
	dc.w	85	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	74	; AGILITY (0-255)
	dc.w	113	; HITPOINTS
	dc.b	$09	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $54, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_TerakiteMap	; Sprite mappings
	dc.b	$3F, $3F	; Enemy id (twice?)
 
Enemy_FireEye:
	dc.w	$0204, $024E, $028E, $02CE, $02EE, $0EEE, $0020, $0040, $0262, $0484, $0686, $0CE8, $0A00, $0C20, $0E42	; Palette data
	dc.l	Battle_FireEyeArt	; Pointer to enemy art
	dc.w	49	; EXPERIENCE POINTS
	dc.w	88	; MESETA
	dc.w	29	; ATTACK
	dc.w	32	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	20	; AGILITY (0-255)
	dc.w	52	; HITPOINTS
	dc.b	$F5	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $50, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_FireEyeMap	; Sprite mappings
	dc.b	$40, $40	; Enemy id (twice?)
 
Enemy_Glowstik:
	dc.w	$0402, $0822, $0A42, $0C84, $0EC8, $0EEE, $0002, $0224, $0246, $0468, $068A, $0ACE, $0060, $02A0, $04E0	; Palette data
	dc.l	Battle_FireEyeArt	; Pointer to enemy art
	dc.w	330	; EXPERIENCE POINTS
	dc.w	315	; MESETA
	dc.w	67	; ATTACK
	dc.w	45	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	40	; AGILITY (0-255)
	dc.w	120	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $50, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_FireEyeMap	; Sprite mappings
	dc.b	$41, $41	; Enemy id (twice?)
 
Enemy_Forest:
	dc.w	$0020, $0240, $0280, $02C4, $02E8, $0EEE, $0202, $0424, $0846, $0A66, $0CA8, $0EC8, $008E, $00CE, $04EE	; Palette data
	dc.l	Battle_FireEyeArt	; Pointer to enemy art
	dc.w	501	; EXPERIENCE POINTS
	dc.w	481	; MESETA
	dc.w	83	; ATTACK
	dc.w	58	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	45	; AGILITY (0-255)
	dc.w	175	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $50, $14	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_FireEyeMap	; Sprite mappings
	dc.b	$42, $42	; Enemy id (twice?)
 
Enemy_Catman:
	dc.w	$0000, $0CAA, $0A88, $0866, $0644, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0422, $0000, $0000	; Palette data
	dc.l	Battle_CatmanArt	; Pointer to enemy art
	dc.w	276	; EXPERIENCE POINTS
	dc.w	236	; MESETA
	dc.w	61	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	50	; AGILITY (0-255)
	dc.w	67	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_CatmanMap	; Sprite mappings
	dc.b	$43, $43	; Enemy id (twice?)
 
Enemy_Catfang:
	dc.w	$0000, $0AAE, $088E, $066C, $044A, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0226, $0000, $0000	; Palette data
	dc.l	Battle_CatmanArt	; Pointer to enemy art
	dc.w	481	; EXPERIENCE POINTS
	dc.w	430	; MESETA
	dc.w	79	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	55	; AGILITY (0-255)
	dc.w	132	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_CatmanMap	; Sprite mappings
	dc.b	$44, $44	; Enemy id (twice?)
 
Enemy_Cateye:
	dc.w	$0000, $00AE, $008E, $006C, $004A, $0CEE, $0ACC, $08AA, $0688, $0466, $0000, $0AAE, $0026, $0000, $0000	; Palette data
	dc.l	Battle_CatmanArt	; Pointer to enemy art
	dc.w	521	; EXPERIENCE POINTS
	dc.w	481	; MESETA
	dc.w	86	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	65	; AGILITY (0-255)
	dc.w	182	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_CatmanMap	; Sprite mappings
	dc.b	$45, $45	; Enemy id (twice?)
 
Enemy_Mechoman:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $08EE, $00CE, $008E, $04AC, $0068, $002A	; Palette data
	dc.l	Battle_MechomanArt	; Pointer to enemy art
	dc.w	627	; EXPERIENCE POINTS
	dc.w	138	; MESETA
	dc.w	46	; ATTACK
	dc.w	68	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	35	; AGILITY (0-255)
	dc.w	65	; HITPOINTS
	dc.b	$F5	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$40, $00, $40, $00	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_MechomanMap	; Sprite mappings
	dc.b	$46, $46	; Enemy id (twice?)
 
Enemy_Sonomech:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $08EE, $00CE, $008E, $0AAA, $0888, $002A	; Palette data
	dc.l	Battle_MechomanArt	; Pointer to enemy art
	dc.w	889	; EXPERIENCE POINTS
	dc.w	199	; MESETA
	dc.w	71	; ATTACK
	dc.w	84	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	43	; AGILITY (0-255)
	dc.w	85	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$40, $00, $40, $00	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_MechomanMap	; Sprite mappings
	dc.b	$47, $47	; Enemy id (twice?)
 
Enemy_Attmech:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0ECA, $0EA0, $0E60, $0AAA, $0666, $0800	; Palette data
	dc.l	Battle_MechomanArt	; Pointer to enemy art
	dc.w	1110	; EXPERIENCE POINTS
	dc.w	263	; MESETA
	dc.w	86	; ATTACK
	dc.w	95	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	58	; AGILITY (0-255)
	dc.w	105	; HITPOINTS
	dc.b	$F1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	229	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$40, $00, $40, $00	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_MechomanMap	; Sprite mappings
	dc.b	$48, $48	; Enemy id (twice?)
 
Enemy_Mazgamma:
	dc.w	$0EEE, $0CCA, $0AA8, $0886, $0664, $0442, $0000, $0000, $000C, $0800, $0E00, $0E80, $00EE, $008E, $024E	; Palette data
	dc.l	Battle_MazgammaArt	; Pointer to enemy art
	dc.w	687	; EXPERIENCE POINTS
	dc.w	205	; MESETA
	dc.w	68	; ATTACK
	dc.w	5	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	90	; AGILITY (0-255)
	dc.w	152	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MazgammaMap	; Sprite mappings
	dc.b	$49, $49	; Enemy id (twice?)
 
Enemy_Firgamma:
	dc.w	$0EEE, $0CCE, $0AAC, $088A, $0668, $0446, $0224, $0000, $0060, $000A, $000E, $066E, $0EE6, $00C8, $0294	; Palette data
	dc.l	Battle_MazgammaArt	; Pointer to enemy art
	dc.w	960	; EXPERIENCE POINTS
	dc.w	312	; MESETA
	dc.w	88	; ATTACK
	dc.w	17	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	108	; AGILITY (0-255)
	dc.w	184	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MazgammaMap	; Sprite mappings
	dc.b	$4A, $4A	; Enemy id (twice?)
 
Enemy_Kilgamma:
	dc.w	$0EEE, $0CEE, $0ACC, $08AA, $0688, $0466, $0244, $0000, $0808, $0080, $00E2, $00EA, $0EAE, $0C8C, $0C4C	; Palette data
	dc.l	Battle_MazgammaArt	; Pointer to enemy art
	dc.w	1279	; EXPERIENCE POINTS
	dc.w	340	; MESETA
	dc.w	102	; ATTACK
	dc.w	20	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	125	; AGILITY (0-255)
	dc.w	215	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MazgammaMap	; Sprite mappings
	dc.b	$4B, $4B	; Enemy id (twice?)
 
Enemy_Metalman:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $0EC8, $0EA0, $0AA8, $0664, $00CE, $000E	; Palette data
	dc.l	Battle_MetalmanArt	; Pointer to enemy art
	dc.w	707	; EXPERIENCE POINTS
	dc.w	197	; MESETA
	dc.w	64	; ATTACK
	dc.w	3	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	68	; AGILITY (0-255)
	dc.w	148	; HITPOINTS
	dc.b	$F1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $00, $50, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MetalmanMap	; Sprite mappings
	dc.b	$4C, $4C	; Enemy id (twice?)
 
Enemy_TwigMan:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $0EC8, $0EA0, $028A, $0066, $00CE, $000E	; Palette data
	dc.l	Battle_MetalmanArt	; Pointer to enemy art
	dc.w	1057	; EXPERIENCE POINTS
	dc.w	278	; MESETA
	dc.w	84	; ATTACK
	dc.w	14	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	88	; AGILITY (0-255)
	dc.w	158	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $00, $50, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MetalmanMap	; Sprite mappings
	dc.b	$4D, $4D	; Enemy id (twice?)
 
Enemy_Twigtall:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0AE6, $06E2, $0AAA, $0888, $0EA0, $000E	; Palette data
	dc.l	Battle_MetalmanArt	; Pointer to enemy art
	dc.w	1279	; EXPERIENCE POINTS
	dc.w	329	; MESETA
	dc.w	108	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	93	; AGILITY (0-255)
	dc.w	208	; HITPOINTS
	dc.b	$E7	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	153	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$58, $00, $50, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_WhistleAttack	; Tech sound id
	dc.l	Battle_MetalmanMap	; Sprite mappings
	dc.b	$4E, $4E	; Enemy id (twice?)
 
Enemy_Cooley61:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $008E, $00CE, $0486, $0264, $00CE, $000E	; Palette data
	dc.l	Battle_Cooley61Art	; Pointer to enemy art
	dc.w	1118	; EXPERIENCE POINTS
	dc.w	176	; MESETA
	dc.w	91	; ATTACK
	dc.w	51	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	63	; AGILITY (0-255)
	dc.w	161	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$47, $08, $47, $08	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_Cooley61Map	; Sprite mappings
	dc.b	$4F, $4F	; Enemy id (twice?)
 
Enemy_Monster:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $0E60, $00CE, $0AAA, $0666, $0EA0, $000E	; Palette data
	dc.l	Battle_Cooley61Art	; Pointer to enemy art
	dc.w	1476	; EXPERIENCE POINTS
	dc.w	124	; MESETA
	dc.w	106	; ATTACK
	dc.w	54	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	73	; AGILITY (0-255)
	dc.w	194	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$47, $08, $47, $08	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_Cooley61Map	; Sprite mappings
	dc.b	$50, $50	; Enemy id (twice?)
 
Enemy_Lrgminer:
	dc.w	$0000, $0020, $0040, $0262, $0484, $06A6, $08C8, $0AEA, $0EEE, $008E, $00CE, $0AAA, $0666, $00CE, $000E	; Palette data
	dc.l	Battle_Cooley61Art	; Pointer to enemy art
	dc.w	1986	; EXPERIENCE POINTS
	dc.w	189	; MESETA
	dc.w	121	; ATTACK
	dc.w	56	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	88	; AGILITY (0-255)
	dc.w	226	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$47, $08, $47, $08	; Unknown data
	dc.b	SFXID_BeeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_Cooley61Map	; Sprite mappings
	dc.b	$51, $51	; Enemy id (twice?)
 
Enemy_Eyesore:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $00CE, $0CCC, $0888, $0666, $0444, $000E	; Palette data
	dc.l	Battle_EyesoreArt	; Pointer to enemy art
	dc.w	845	; EXPERIENCE POINTS
	dc.w	462	; MESETA
	dc.w	61	; ATTACK
	dc.w	80	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	48	; AGILITY (0-255)
	dc.w	136	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	178	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6A, $00, $6C, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_EyesoreMap	; Sprite mappings
	dc.b	$52, $52	; Enemy id (twice?)
 
Enemy_Hvysolid:
	dc.w	$0000, $0202, $0242, $0464, $0686, $08A8, $0ACA, $0CAC, $0EEE, $00CE, $0CCC, $0888, $0666, $0444, $000E	; Palette data
	dc.l	Battle_EyesoreArt	; Pointer to enemy art
	dc.w	2087	; EXPERIENCE POINTS
	dc.w	702	; MESETA
	dc.w	84	; ATTACK
	dc.w	92	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	58	; AGILITY (0-255)
	dc.w	190	; HITPOINTS
	dc.b	$E1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	204	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6A, $00, $60, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_EyesoreMap	; Sprite mappings
	dc.b	$53, $53	; Enemy id (twice?)
 
Enemy_GunBust:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $00CE, $04AA, $0288, $0044, $0022, $000E	; Palette data
	dc.l	Battle_EyesoreArt	; Pointer to enemy art
	dc.w	3358	; EXPERIENCE POINTS
	dc.w	914	; MESETA
	dc.w	104	; ATTACK
	dc.w	98	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	68	; AGILITY (0-255)
	dc.w	215	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6A, $00, $6C, $00	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_EyesoreMap	; Sprite mappings
	dc.b	$54, $54	; Enemy id (twice?)
 
Enemy_ArmyEye:
	dc.w	$0000, $0000, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $0CCC, $0888, $0666, $0444, $0060, $000E	; Palette data
	dc.l	Battle_ArmyEyeArt	; Pointer to enemy art
	dc.w	2	; EXPERIENCE POINTS
	dc.w	0	; MESETA
	dc.w	35	; ATTACK
	dc.w	104	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	38	; AGILITY (0-255)
	dc.w	3000	; HITPOINTS
	dc.b	$07	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	0	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $00, $68, $14	; Unknown data
	dc.b	SFXID_ArmyEyeAttack	; Attack sound id
	dc.b	SFXID_BeeAttack	; Tech sound id
	dc.l	Battle_ArmyEyeMap	; Sprite mappings
	dc.b	$55, $55	; Enemy id (twice?)
 
Enemy_Trcrbase:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $0CCC, $0AAA, $0888, $0666, $00CE, $008E	; Palette data
	dc.l	Battle_ArmyEyeArt	; Pointer to enemy art
	dc.w	1773	; EXPERIENCE POINTS
	dc.w	864	; MESETA
	dc.w	127	; ATTACK
	dc.w	104	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	40	; AGILITY (0-255)
	dc.w	201	; HITPOINTS
	dc.b	$DD	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	178	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $00, $68, $00	; Unknown data
	dc.b	SFXID_ArmyEyeAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_ArmyEyeMap	; Sprite mappings
	dc.b	$56, $56	; Enemy id (twice?)
 
Enemy_Specter:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $06CC, $08EE, $0CEE, $0CCC, $0888, $0666, $0444, $00CE, $008E	; Palette data
	dc.l	Battle_ArmyEyeArt	; Pointer to enemy art
	dc.w	2395	; EXPERIENCE POINTS
	dc.w	124	; MESETA
	dc.w	157	; ATTACK
	dc.w	122	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	51	; AGILITY (0-255)
	dc.w	268	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $00, $60, $14	; Unknown data
	dc.b	SFXID_ArmyEyeAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_ArmyEyeMap	; Sprite mappings
	dc.b	$57, $57	; Enemy id (twice?)
 
Enemy_Van:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0ACA, $0CEC, $0EEE, $00CE, $008E, $004E, $002E, $0008, $000E	; Palette data
	dc.l	Battle_VanArt	; Pointer to enemy art
	dc.w	1259	; EXPERIENCE POINTS
	dc.w	596	; MESETA
	dc.w	93	; ATTACK
	dc.w	83	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	55	; AGILITY (0-255)
	dc.w	197	; HITPOINTS
	dc.b	$F1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $1C, $64, $1C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_VanMap	; Sprite mappings
	dc.b	$58, $58	; Enemy id (twice?)
 
Enemy_Vanleadr:
	dc.w	$0000, $0024, $0246, $0468, $068A, $08AC, $0ACE, $0CEE, $0EEE, $06E2, $00C0, $0080, $0060, $0040, $000E	; Palette data
	dc.l	Battle_VanArt	; Pointer to enemy art
	dc.w	1624	; EXPERIENCE POINTS
	dc.w	747	; MESETA
	dc.w	108	; ATTACK
	dc.w	95	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	63	; AGILITY (0-255)
	dc.w	239	; HITPOINTS
	dc.b	$E7	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	127	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $1C, $64, $1C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_VanMap	; Sprite mappings
	dc.b	$59, $59	; Enemy id (twice?)
 
Enemy_Aerotank:
	dc.w	$0000, $0220, $0442, $0664, $0886, $0AA8, $0CCA, $0EEC, $0EEE, $0EC8, $0EA0, $0E60, $0C20, $0800, $000E	; Palette data
	dc.l	Battle_VanArt	; Pointer to enemy art
	dc.w	2709	; EXPERIENCE POINTS
	dc.w	1080	; MESETA
	dc.w	168	; ATTACK
	dc.w	144	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	76	; AGILITY (0-255)
	dc.w	306	; HITPOINTS
	dc.b	$E2	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$64, $1C, $64, $1C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_ArmyEyeAttack	; Tech sound id
	dc.l	Battle_VanMap	; Sprite mappings
	dc.b	$5A, $5A	; Enemy id (twice?)
 
Enemy_Orangah:
	dc.w	$0000, $0EEE, $0E6A, $0C48, $0A26, $0804, $0400, $00AA, $0088, $0066, $0044, $0022, $0002, $0A8E, $000E	; Palette data
	dc.l	Battle_OrangahArt	; Pointer to enemy art
	dc.w	1778	; EXPERIENCE POINTS
	dc.w	193	; MESETA
	dc.w	94	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	98	; AGILITY (0-255)
	dc.w	128	; HITPOINTS
	dc.b	$09	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_OrangahMap	; Sprite mappings
	dc.b	$5B, $5B	; Enemy id (twice?)
 
Enemy_Orangoo:
	dc.w	$0000, $0000, $0EA6, $0C84, $0A62, $0840, $0400, $008E, $006C, $004A, $0028, $0006, $0004, $0E8C, $000E	; Palette data
	dc.l	Battle_OrangahArt	; Pointer to enemy art
	dc.w	2178	; EXPERIENCE POINTS
	dc.w	239	; MESETA
	dc.w	98	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	103	; AGILITY (0-255)
	dc.w	155	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_OrangahMap	; Sprite mappings
	dc.b	$5C, $5C	; Enemy id (twice?)
 
Enemy_Ohx:
	dc.w	$0000, $0000, $0E8E, $0A6E, $064E, $022E, $0026, $0ACA, $08E8, $0686, $046A, $0242, $0020, $0ECC, $000E	; Palette data
	dc.l	Battle_OrangahArt	; Pointer to enemy art
	dc.w	2684	; EXPERIENCE POINTS
	dc.w	252	; MESETA
	dc.w	104	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	83	; AGILITY (0-255)
	dc.w	191	; HITPOINTS
	dc.b	$0E	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	25	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_OrangahMap	; Sprite mappings
	dc.b	$5D, $5D	; Enemy id (twice?)
 
Enemy_Mastodon:
	dc.w	$0EEE, $0000, $000E, $0AAC, $088A, $0668, $0446, $0224, $0008, $026E, $0ACA, $08A8, $0686, $066C, $044A	; Palette data
	dc.l	Battle_MastodonArt	; Pointer to enemy art
	dc.w	1887	; EXPERIENCE POINTS
	dc.w	840	; MESETA
	dc.w	137	; ATTACK
	dc.w	63	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	43	; AGILITY (0-255)
	dc.w	187	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_MastodonMap	; Sprite mappings
	dc.b	$5E, $5E	; Enemy id (twice?)
 
Enemy_Eletusk:
	dc.w	$0EEE, $0000, $0008, $0AA6, $0884, $0662, $0440, $0220, $0206, $026E, $0ACC, $08CC, $06AA, $084A, $0628	; Palette data
	dc.l	Battle_MastodonArt	; Pointer to enemy art
	dc.w	2488	; EXPERIENCE POINTS
	dc.w	907	; MESETA
	dc.w	167	; ATTACK
	dc.w	69	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	65	; AGILITY (0-255)
	dc.w	187	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_MastodonMap	; Sprite mappings
	dc.b	$5F, $5F	; Enemy id (twice?)
 
Enemy_Elephant:
	dc.w	$0EEE, $0000, $00EE, $08CC, $06AA, $0488, $0266, $0044, $020C, $0AAE, $0ECE, $0CAC, $0A8A, $048E, $026A	; Palette data
	dc.l	Battle_MastodonArt	; Pointer to enemy art
	dc.w	3391	; EXPERIENCE POINTS
	dc.w	918	; MESETA
	dc.w	193	; ATTACK
	dc.w	70	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	65	; AGILITY (0-255)
	dc.w	187	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_MastodonMap	; Sprite mappings
	dc.b	$60, $60	; Enemy id (twice?)
 
Enemy_DezoOwl:
	dc.w	$0EEE, $0AA8, $0662, $0ACA, $08A8, $0486, $0264, $0042, $0020, $0000, $008C, $006A, $0048, $000A, $0024	; Palette data
	dc.l	Battle_DezoOwlArt	; Pointer to enemy art
	dc.w	1832	; EXPERIENCE POINTS
	dc.w	116	; MESETA
	dc.w	105	; ATTACK
	dc.w	36	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	40	; AGILITY (0-255)
	dc.w	112	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_DezoOwlMap	; Sprite mappings
	dc.b	$61, $61	; Enemy id (twice?)
 
Enemy_Skytiara:
	dc.w	$0EEE, $0ACA, $08A2, $08CA, $08AA, $068A, $046A, $0248, $0024, $0000, $048E, $026E, $004E, $000C, $0028	; Palette data
	dc.l	Battle_DezoOwlArt	; Pointer to enemy art
	dc.w	2283	; EXPERIENCE POINTS
	dc.w	287	; MESETA
	dc.w	129	; ATTACK
	dc.w	62	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	68	; AGILITY (0-255)
	dc.w	122	; HITPOINTS
	dc.b	$05	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	25	; Chances of using tech instead of attack (0-255)
	dc.b	$10	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_DezoOwlMap	; Sprite mappings
	dc.b	$62, $62	; Enemy id (twice?)
 
Enemy_Owltalon:
	dc.w	$0EEE, $0ACC, $0688, $0EAC, $0C8A, $0A86, $0864, $0642, $0420, $0000, $008E, $006E, $004E, $000E, $000A	; Palette data
	dc.l	Battle_DezoOwlArt	; Pointer to enemy art
	dc.w	2701	; EXPERIENCE POINTS
	dc.w	397	; MESETA
	dc.w	141	; ATTACK
	dc.w	79	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	93	; AGILITY (0-255)
	dc.w	145	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$7C, $00, $7C, $00	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_LocustAttack	; Tech sound id
	dc.l	Battle_DezoOwlMap	; Sprite mappings
	dc.b	$63, $63	; Enemy id (twice?)
 
Enemy_Rabbit:
	dc.w	$0EEC, $0CCA, $0AA8, $0886, $0664, $0442, $0220, $008E, $004C, $0A8C, $086A, $0648, $0426, $0000, $0000	; Palette data
	dc.l	Battle_RabbitArt	; Pointer to enemy art
	dc.w	1724	; EXPERIENCE POINTS
	dc.w	270	; MESETA
	dc.w	70	; ATTACK
	dc.w	6	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	75	; AGILITY (0-255)
	dc.w	153	; HITPOINTS
	dc.b	$04	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_BlasterAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_RabbitMap	; Sprite mappings
	dc.b	$64, $64	; Enemy id (twice?)
 
Enemy_Rabitta:
	dc.w	$0EEE, $0CCE, $0AAE, $088C, $066A, $0448, $0226, $0648, $0426, $08A8, $0686, $0464, $0242, $0000, $0000	; Palette data
	dc.l	Battle_RabbitArt	; Pointer to enemy art
	dc.w	2238	; EXPERIENCE POINTS
	dc.w	364	; MESETA
	dc.w	108	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	80	; AGILITY (0-255)
	dc.w	167	; HITPOINTS
	dc.b	$11	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_BlasterAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_RabbitMap	; Sprite mappings
	dc.b	$65, $65	; Enemy id (twice?)
 
Enemy_Rabitgut:
	dc.w	$0CEE, $0AEE, $08CC, $06AA, $0488, $0266, $0044, $04AE, $020A, $088C, $066A, $0448, $0226, $0842, $0620	; Palette data
	dc.l	Battle_RabbitArt	; Pointer to enemy art
	dc.w	2820	; EXPERIENCE POINTS
	dc.w	380	; MESETA
	dc.w	116	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	85	; AGILITY (0-255)
	dc.w	203	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	7	; Animation frame delay
	dc.b	$64, $0C, $64, $0C	; Unknown data
	dc.b	SFXID_BlasterAttack	; Attack sound id
	dc.b	SFXID_AmoebaAttack	; Tech sound id
	dc.l	Battle_RabbitMap	; Sprite mappings
	dc.b	$66, $66	; Enemy id (twice?)
 
Enemy_Wrestler:
	dc.w	$08CC, $06AA, $0488, $0266, $0044, $0022, $0EEE, $0888, $0000, $0848, $0626, $0404, $0202, $0642, $0420	; Palette data
	dc.l	Battle_WresterArt	; Pointer to enemy art
	dc.w	2955	; EXPERIENCE POINTS
	dc.w	124	; MESETA
	dc.w	90	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	58	; AGILITY (0-255)
	dc.w	184	; HITPOINTS
	dc.b	$03	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WresterMap	; Sprite mappings
	dc.b	$67, $67	; Enemy id (twice?)
 
Enemy_Sakoff:
	dc.w	$06C8, $04A6, $0284, $0062, $0040, $0020, $0EEE, $0888, $0CA0, $0A66, $0844, $0622, $0400, $0664, $0442	; Palette data
	dc.l	Battle_WresterArt	; Pointer to enemy art
	dc.w	4072	; EXPERIENCE POINTS
	dc.w	166	; MESETA
	dc.w	107	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	88	; AGILITY (0-255)
	dc.w	198	; HITPOINTS
	dc.b	$04	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$0C	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	204	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WresterMap	; Sprite mappings
	dc.b	$68, $68	; Enemy id (twice?)
 
Enemy_Mesoman:
	dc.w	$0AA8, $0886, $0664, $0442, $0220, $0220, $0EEE, $0888, $0000, $026E, $000A, $0006, $0002, $0060, $0040	; Palette data
	dc.l	Battle_WresterArt	; Pointer to enemy art
	dc.w	4737	; EXPERIENCE POINTS
	dc.w	189	; MESETA
	dc.w	120	; ATTACK
	dc.w	20	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	103	; AGILITY (0-255)
	dc.w	215	; HITPOINTS
	dc.b	$05	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$14	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $0C, $54, $0C	; Unknown data
	dc.b	SFXID_Whip	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_WresterMap	; Sprite mappings
	dc.b	$69, $69	; Enemy id (twice?)
 
Enemy_Lung:
	dc.w	$0000, $0002, $0024, $0046, $008C, $06CE, $0CEE, $0EEE, $0222, $0666, $0E02, $0EE0, $080E, $000A, $0000	; Palette data
	dc.l	Battle_LungArt	; Pointer to enemy art
	dc.w	6195	; EXPERIENCE POINTS
	dc.w	168	; MESETA
	dc.w	209	; ATTACK
	dc.w	47	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	90	; AGILITY (0-255)
	dc.w	292	; HITPOINTS
	dc.b	$F5	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	76	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_LungMap	; Sprite mappings
	dc.b	$6A, $6A	; Enemy id (twice?)
 
Enemy_Glosword:
	dc.w	$0000, $0200, $0420, $0640, $0C80, $0EC6, $0EEC, $0EEE, $0202, $0A0A, $008E, $00EC, $08EE, $00E0, $0000	; Palette data
	dc.l	Battle_LungArt	; Pointer to enemy art
	dc.w	5852	; EXPERIENCE POINTS
	dc.w	206	; MESETA
	dc.w	229	; ATTACK
	dc.w	23	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	113	; AGILITY (0-255)
	dc.w	330	; HITPOINTS
	dc.b	$11	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_LungMap	; Sprite mappings
	dc.b	$6B, $6B	; Enemy id (twice?)
 
Enemy_Desrona:
	dc.w	$0000, $0000, $0222, $0444, $0666, $0888, $0AAA, $0EEE, $0026, $006A, $000A, $024E, $0C60, $0A00, $0000	; Palette data
	dc.l	Battle_LungArt	; Pointer to enemy art
	dc.w	6897	; EXPERIENCE POINTS
	dc.w	231	; MESETA
	dc.w	192	; ATTACK
	dc.w	23	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	128	; AGILITY (0-255)
	dc.w	290	; HITPOINTS
	dc.b	$13	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	25	; Chances of using tech instead of attack (0-255)
	dc.b	$14	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$60, $0C, $60, $0C	; Unknown data
	dc.b	SFXID_LocustAttack	; Attack sound id
	dc.b	SFXID_SpinnerAttack	; Tech sound id
	dc.l	Battle_LungMap	; Sprite mappings
	dc.b	$6C, $6C	; Enemy id (twice?)
 
Enemy_Darkside:
	dc.w	$0EEE, $0A40, $0820, $0600, $0400, $00EE, $000E, $0004, $00EA, $0AC0, $0680, $0020, $0068, $0626, $0000	; Palette data
	dc.l	Battle_DarksideArt	; Pointer to enemy art
	dc.w	3978	; EXPERIENCE POINTS
	dc.w	162	; MESETA
	dc.w	154	; ATTACK
	dc.w	13	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	95	; AGILITY (0-255)
	dc.w	283	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $08, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_DarksideMap	; Sprite mappings
	dc.b	$6D, $6D	; Enemy id (twice?)
 
Enemy_MrDeath:
	dc.w	$0EEE, $0A8A, $0646, $0424, $0202, $00EE, $00E0, $0040, $022A, $0008, $0004, $0020, $0068, $0626, $0000	; Palette data
	dc.l	Battle_DarksideArt	; Pointer to enemy art
	dc.w	4942	; EXPERIENCE POINTS
	dc.w	197	; MESETA
	dc.w	174	; ATTACK
	dc.w	15	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	108	; AGILITY (0-255)
	dc.w	324	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $08, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_DarksideMap	; Sprite mappings
	dc.b	$6E, $6E	; Enemy id (twice?)
 
Enemy_Shadow:
	dc.w	$0EEE, $0ECC, $0A66, $0844, $0622, $00EE, $000E, $0004, $08A0, $0860, $0420, $0020, $0068, $0626, $0000	; Palette data
	dc.l	Battle_DarksideArt	; Pointer to enemy art
	dc.w	5765	; EXPERIENCE POINTS
	dc.w	227	; MESETA
	dc.w	190	; ATTACK
	dc.w	17	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	125	; AGILITY (0-255)
	dc.w	365	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $08, $6C, $00	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_NeifirstAttack	; Tech sound id
	dc.l	Battle_DarksideMap	; Sprite mappings
	dc.b	$6F, $6F	; Enemy id (twice?)
 
Enemy_Mystcape:
	dc.w	$0000, $0224, $0668, $088A, $0DDE, $0844, $0C88, $0ECC, $0EEE, $0042, $0286, $06EA, $00EE, $000E, $0002	; Palette data
	dc.l	Battle_MystcapeArt	; Pointer to enemy art
	dc.w	3390	; EXPERIENCE POINTS
	dc.w	116	; MESETA
	dc.w	92	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	63	; AGILITY (0-255)
	dc.w	163	; HITPOINTS
	dc.b	$0F	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_MystcapeMap	; Sprite mappings
	dc.b	$70, $70	; Enemy id (twice?)
 
Enemy_Illusnst:
	dc.w	$0000, $0020, $0064, $0086, $00C8, $0444, $0888, $0CCC, $0CEE, $0004, $0206, $040A, $000E, $0E44, $0000	; Palette data
	dc.l	Battle_MystcapeArt	; Pointer to enemy art
	dc.w	4424	; EXPERIENCE POINTS
	dc.w	155	; MESETA
	dc.w	107	; ATTACK
	dc.w	18	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	80	; AGILITY (0-255)
	dc.w	204	; HITPOINTS
	dc.b	$05	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	51	; Chances of using tech instead of attack (0-255)
	dc.b	$14	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	178	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_MystcapeMap	; Sprite mappings
	dc.b	$71, $71	; Enemy id (twice?)
 
Enemy_Imagiomg:
	dc.w	$0000, $0206, $084A, $0A8C, $0ECE, $0244, $0688, $0ACC, $0EEE, $0006, $022A, $046E, $0EE0, $00E0, $0002	; Palette data
	dc.l	Battle_MystcapeArt	; Pointer to enemy art
	dc.w	5694	; EXPERIENCE POINTS
	dc.w	223	; MESETA
	dc.w	177	; ATTACK
	dc.w	18	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	123	; AGILITY (0-255)
	dc.w	238	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$5C, $0C, $5C, $0C	; Unknown data
	dc.b	SFXID_VanAttack	; Attack sound id
	dc.b	SFXID_VanAttack	; Tech sound id
	dc.l	Battle_MystcapeMap	; Sprite mappings
	dc.b	$72, $72	; Enemy id (twice?)
 
Enemy_ArchDrgn:
	dc.w	$0000, $0224, $0446, $0668, $088A, $0AAC, $0EEE, $0ACA, $0686, $00CE, $008E, $004E, $002E, $0008, $008E	; Palette data
	dc.l	Battle_ArchDrgnArt	; Pointer to enemy art
	dc.w	9584	; EXPERIENCE POINTS
	dc.w	159	; MESETA
	dc.w	254	; ATTACK
	dc.w	67	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	100	; AGILITY (0-255)
	dc.w	276	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	127	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$68, $04, $68, $04	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_ArchDrgnMap	; Sprite mappings
	dc.b	$73, $73	; Enemy id (twice?)
 
Enemy_Frdragon:
	dc.w	$0000, $0020, $0242, $0464, $0686, $08A8, $0EEE, $0AAA, $0666, $00CE, $008E, $004E, $002E, $0008, $008E	; Palette data
	dc.l	Battle_ArchDrgnArt	; Pointer to enemy art
	dc.w	8355	; EXPERIENCE POINTS
	dc.w	214	; MESETA
	dc.w	223	; ATTACK
	dc.w	63	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	118	; AGILITY (0-255)
	dc.w	262	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$68, $04, $68, $04	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_ArchDrgnMap	; Sprite mappings
	dc.b	$74, $74	; Enemy id (twice?)
 
Enemy_Mxdragon:
	dc.w	$0000, $0022, $0044, $0066, $0288, $04AA, $0EEE, $0ACA, $0686, $00CE, $008E, $004E, $002E, $0008, $008E	; Palette data
	dc.l	Battle_ArchDrgnArt	; Pointer to enemy art
	dc.w	6747	; EXPERIENCE POINTS
	dc.w	197	; MESETA
	dc.w	213	; ATTACK
	dc.w	59	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	108	; AGILITY (0-255)
	dc.w	259	; HITPOINTS
	dc.b	$00	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	0	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	153	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$68, $04, $68, $04	; Unknown data
	dc.b	SFXID_TerakiteAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_ArchDrgnMap	; Sprite mappings
	dc.b	$75, $75	; Enemy id (twice?)
 
Enemy_Firefall:
	dc.w	$0EEE, $08EE, $00CE, $00AE, $008E, $006E, $002E, $000A, $0006, $0002, $04A0, $0480, $0260, $0040, $0000	; Palette data
	dc.l	Battle_FirefallArt	; Pointer to enemy art
	dc.w	8446	; EXPERIENCE POINTS
	dc.w	181	; MESETA
	dc.w	195	; ATTACK
	dc.w	102	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	98	; AGILITY (0-255)
	dc.w	256	; HITPOINTS
	dc.b	$EB	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	204	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	25	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $0C, $78, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_FirefallMap	; Sprite mappings
	dc.b	$76, $76	; Enemy id (twice?)
 
Enemy_Vorcano:
	dc.w	$0EEE, $0AE4, $08C0, $06C0, $04C0, $02A0, $0080, $0060, $0040, $0020, $006E, $000E, $000C, $0008, $0000	; Palette data
	dc.l	Battle_FirefallArt	; Pointer to enemy art
	dc.w	10097	; EXPERIENCE POINTS
	dc.w	218	; MESETA
	dc.w	215	; ATTACK
	dc.w	118	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	120	; AGILITY (0-255)
	dc.w	296	; HITPOINTS
	dc.b	$E1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	204	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	51	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $0C, $78, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_FirefallMap	; Sprite mappings
	dc.b	$77, $77	; Enemy id (twice?)
 
Enemy_Kinglava:
	dc.w	$0EEE, $0EA8, $0E6A, $0E48, $0E26, $0E04, $0C00, $0A00, $0600, $0400, $000E, $000A, $0006, $0002, $0000	; Palette data
	dc.l	Battle_FirefallArt	; Pointer to enemy art
	dc.w	13944	; EXPERIENCE POINTS
	dc.w	245	; MESETA
	dc.w	248	; ATTACK
	dc.w	129	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	135	; AGILITY (0-255)
	dc.w	333	; HITPOINTS
	dc.b	$DD	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	204	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $0C, $78, $0C	; Unknown data
	dc.b	SFXID_FireAntAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_FirefallMap	; Sprite mappings
	dc.b	$78, $78	; Enemy id (twice?)
 
Enemy_Wizard:
	dc.w	$0EEE, $022E, $0C42, $0888, $0666, $0444, $0222, $000C, $000A, $0008, $0006, $0004, $0002, $0CA0, $0000	; Palette data
	dc.l	Battle_WizardArt	; Pointer to enemy art
	dc.w	9805	; EXPERIENCE POINTS
	dc.w	151	; MESETA
	dc.w	218	; ATTACK
	dc.w	8	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	78	; AGILITY (0-255)
	dc.w	352	; HITPOINTS
	dc.b	$F1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	204	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $10, $78, $10	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_WizardMap	; Sprite mappings
	dc.b	$79, $79	; Enemy id (twice?)
 
Enemy_Capeone:
	dc.w	$0EEE, $0CA0, $06A0, $08AA, $0688, $0466, $0244, $0A80, $0860, $0640, $0420, $0200, $0000, $0CE8, $0000	; Palette data
	dc.l	Battle_WizardArt	; Pointer to enemy art
	dc.w	11399	; EXPERIENCE POINTS
	dc.w	202	; MESETA
	dc.w	256	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	90	; AGILITY (0-255)
	dc.w	358	; HITPOINTS
	dc.b	$E7	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	153	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	102	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $10, $78, $10	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_WizardMap	; Sprite mappings
	dc.b	$7A, $7A	; Enemy id (twice?)
 
Enemy_Fiend:
	dc.w	$0EEE, $06C0, $022E, $088A, $0668, $0446, $0224, $04A0, $0280, $0060, $0040, $0020, $0000, $066E, $0000	; Palette data
	dc.l	Battle_WizardArt	; Pointer to enemy art
	dc.w	12248	; EXPERIENCE POINTS
	dc.w	236	; MESETA
	dc.w	274	; ATTACK
	dc.w	16	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	90	; AGILITY (0-255)
	dc.w	364	; HITPOINTS
	dc.b	$D7	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$04	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	76	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$78, $10, $78, $10	; Unknown data
	dc.b	SFXID_PoleziAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_WizardMap	; Sprite mappings
	dc.b	$7B, $7B	; Enemy id (twice?)
 
Enemy_Neifirst:
	dc.w	$0AE0, $0EC0, $0CA0, $0A80, $0860, $0640, $0420, $0E44, $0E22, $0A00, $0800, $0EEE, $0600, $0400, $0000	; Palette data
	dc.l	Battle_NeifirstArt	; Pointer to enemy art
	dc.w	1111	; EXPERIENCE POINTS
	dc.w	1111	; MESETA
	dc.w	178	; ATTACK
	dc.w	10	; DEFENSE
	dc.b	%00100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	92	; AGILITY (0-255)
	dc.w	1100	; HITPOINTS
	dc.b	$E1	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	102	; Chances of using tech instead of attack (0-255)
	dc.b	$08	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	0	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$54, $14, $54, $14	; Unknown data
	dc.b	SFXID_NeifirstAttack	; Attack sound id
	dc.b	SFXID_Whip	; Tech sound id
	dc.l	Battle_NeifirstMap	; Sprite mappings
	dc.b	$7C, $7C	; Enemy id (twice?)
 
Enemy_DarkFrce:
	dc.w	$0000, $0220, $0440, $0660, $0880, $0AA0, $0CC0, $0EE0, $0EE8, $0EEE, $088E, $0620, $0C80, $0008, $0000	; Palette data
	dc.l	Battle_DarkFrceArt	; Pointer to enemy art
	dc.w	2222	; EXPERIENCE POINTS
	dc.w	0	; MESETA
	dc.w	320	; ATTACK
	dc.w	30	; DEFENSE
	dc.b	%01100000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	148	; AGILITY (0-255)
	dc.w	2560	; HITPOINTS
	dc.b	$08	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	255	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	0	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$6C, $00, $6C, $00	; Unknown data
	dc.b	SFXID_WhistleAttack	; Attack sound id
	dc.b	SFXID_PoleziAttack	; Tech sound id
	dc.l	Battle_DarkFrceMap	; Sprite mappings
	dc.b	$7D, $7D	; Enemy id (twice?)
 
Enemy_Mombrain:
	dc.w	$0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000	; Palette data
	dc.l	Battle_MombrainArt	; Pointer to enemy art
	dc.w	0	; EXPERIENCE POINTS
	dc.w	0	; MESETA
	dc.w	228	; ATTACK
	dc.w	128	; DEFENSE
	dc.b	%01000000	; Enemy type (%00100000 - biomonster, %01000000 - robot, %01100000 - both)
	dc.b	198	; AGILITY (0-255)
	dc.w	2450	; HITPOINTS
	dc.b	$AF	; Enemy tech (index number from EnemyTechniqueTable)
	dc.b	178	; Chances of using tech instead of attack (0-255)
	dc.b	$00	; Tech success rate (index number from EnemyTechSuccessRate table)
	dc.b	0	; Chances of escaping from (0-255)
	dc.b	%00001111	; Initial object properties
	dc.b	3	; Animation frame delay
	dc.b	$84, $00, $84, $00	; Unknown data
	dc.b	SFXID_PulserAttack	; Attack sound id
	dc.b	SFXID_TerakiteAttack	; Tech sound id
	dc.l	Battle_MombrainMap	; Sprite mappings
	dc.b	$7E, $7E	; Enemy id (twice?)
