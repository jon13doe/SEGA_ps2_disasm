; =============================================================================
; Experience table
;
; byte 1 = character level
; bytes 2-4 = experience points
;             You'll have too add the bytes together. No way around it. :(
; bytes 5-13 = stats
; byte 14 =  number of usable techniques increase
;			higher nibble = battle techniques
;			lower nibble = map techniques
;
; 1. HP
; 2. TP
; 3. STRENGTH
; 4. MENTAL
; 5. AGILITY
; 6. LUCK
; 7. DEXTERITY
; 8. ATTACK
; 9. DEFENSE
;
;==============================================================================

CharExperiencePtrs:
	dc.l	RolfExpTable
	dc.l	NeiExpTable
	dc.l	RudoExpTable
	dc.l	AmyExpTable
	dc.l	HughExpTable
	dc.l	AnnaExpTable
	dc.l	KainExpTable
	dc.l	ShirExpTable
CharExperiencePtrsEnd:

; ==============================================================

RolfExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	19 , 15 , 20 , 28 , 15 , 13 , 20 , 12 , 10 , $10

	dc.b	2		; Level
	dc.b	$00, $00, $1D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $53	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $AA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 5  , $01

	dc.b	5		; Level
	dc.b	$00, $01, $21	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $20

	dc.b	6		; Level
	dc.b	$00, $01, $F8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	7		; Level
	dc.b	$00, $03, $28	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $11

	dc.b	8		; Level
	dc.b	$00, $04, $EC	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $11

	dc.b	9		; Level
	dc.b	$00, $07, $8A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	10		; Level
	dc.b	$00, $0B, $6C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $10

	dc.b	11		; Level
	dc.b	$00, $11, $17	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $10

	dc.b	12		; Level
	dc.b	$00, $19, $68	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	13		; Level
	dc.b	$00, $25, $96	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	14		; Level
	dc.b	$00, $37, $54	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $10

	dc.b	15		; Level
	dc.b	$00, $51, $2F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	16		; Level
	dc.b	$00, $76, $DB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $21

	dc.b	17		; Level
	dc.b	$00, $AD, $BB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	18		; Level
	dc.b	$00, $FD, $71	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	19		; Level
	dc.b	$01, $53, $70	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	20		; Level
	dc.b	$01, $B1, $97	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $10

	dc.b	21		; Level
	dc.b	$02, $1B, $80	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	22		; Level
	dc.b	$02, $90, $CC	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	23		; Level
	dc.b	$03, $19, $DD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	24		; Level
	dc.b	$03, $B6, $7F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $10

	dc.b	25		; Level
	dc.b	$04, $66, $CC	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	26		; Level
	dc.b	$05, $2B, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	27		; Level
	dc.b	$06, $01, $B3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	28		; Level
	dc.b	$06, $EC, $98	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $10

	dc.b	29		; Level
	dc.b	$07, $EA, $81	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	30		; Level
	dc.b	$08, $FC, $6B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $01

	dc.b	31		; Level
	dc.b	$0A, $5D, $84	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	32		; Level
	dc.b	$0B, $B6, $79	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 12 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	33		; Level
	dc.b	$0D, $3C, $46	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	34		; Level
	dc.b	$0E, $F4, $C0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	35		; Level
	dc.b	$10, $E6, $7D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $10

	dc.b	36		; Level
	dc.b	$13, $18, $EF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 14 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	37		; Level
	dc.b	$15, $94, $7E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	38		; Level
	dc.b	$18, $62, $AD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	39		; Level
	dc.b	$1B, $8E, $3A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	40		; Level
	dc.b	$1F, $23, $47	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	41		; Level
	dc.b	$23, $2F, $8B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	42		; Level
	dc.b	$27, $C2, $86	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	43		; Level
	dc.b	$2C, $ED, $BB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	44		; Level
	dc.b	$32, $C4, $F5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	45		; Level
	dc.b	$39, $5E, $8F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	46		; Level
	dc.b	$40, $D3, $D0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

	dc.b	47		; Level
	dc.b	$49, $41, $45	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 6  , 5  , $00

	dc.b	48		; Level
	dc.b	$52, $C7, $32	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 6  , 13 , 10 , 8  , 10 , 10 , 7  , 6  , $00

	dc.b	49		; Level
	dc.b	$5D, $8A, $0D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 5  , 4  , 3  , 4  , 4  , 4  , 3  , $00

	dc.b	50		; Level
	dc.b	$69, $B3, $09	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 5  , 4  , 3  , 4  , 4  , 5  , 4  , $00

; ==============================================================

NeiExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	12 , 10 , 14 , 18 , 27 , 10 , 14 , 7  , 12 , $11

	dc.b	2		; Level
	dc.b	$00, $00, $0C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $19	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $38	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	5		; Level
	dc.b	$00, $00, $53	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	6		; Level
	dc.b	$00, $00, $7C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	7		; Level
	dc.b	$00, $00, $A9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	8		; Level
	dc.b	$00, $00, $E9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 4  , 15 , 9  , 2  , 10 , 10 , 6  , 5  , $00

	dc.b	9		; Level
	dc.b	$00, $01, $2F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	10		; Level
	dc.b	$00, $01, $8C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	11		; Level
	dc.b	$00, $01, $FE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	12		; Level
	dc.b	$00, $02, $91	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	13		; Level
	dc.b	$00, $03, $40	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	14		; Level
	dc.b	$00, $04, $1E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	15		; Level
	dc.b	$00, $05, $1E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	16		; Level
	dc.b	$00, $06, $5D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 4  , 15 , 9  , 2  , 10 , 10 , 6  , 5  , $01

	dc.b	17		; Level
	dc.b	$00, $07, $E4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	18		; Level
	dc.b	$00, $09, $CA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	19		; Level
	dc.b	$00, $0C, $0B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	20		; Level
	dc.b	$00, $0E, $D1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $11

	dc.b	21		; Level
	dc.b	$00, $11, $EF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	22		; Level
	dc.b	$00, $15, $B5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	23		; Level
	dc.b	$00, $1A, $10	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	24		; Level
	dc.b	$00, $1F, $4D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 4  , 15 , 9  , 2  , 10 , 10 , 6  , 5  , $11

	dc.b	25		; Level
	dc.b	$00, $25, $81	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	26		; Level
	dc.b	$00, $2C, $F2	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	27		; Level
	dc.b	$00, $35, $EA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	28		; Level
	dc.b	$00, $40, $AE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	29		; Level
	dc.b	$00, $4E, $F4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	30		; Level
	dc.b	$00, $60, $62	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	31		; Level
	dc.b	$00, $75, $FF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	32		; Level
	dc.b	$00, $90, $77	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 4  , 15 , 9  , 2  , 10 , 10 , 6  , 5  , $00

	dc.b	33		; Level
	dc.b	$00, $B0, $48	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 1  , $00

	dc.b	34		; Level
	dc.b	$00, $D7, $1D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 2  , 1  , 1  , 2  , 2  , $00

	dc.b	35		; Level
	dc.b	$01, $03, $66	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	36		; Level
	dc.b	$01, $38, $CE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	37		; Level
	dc.b	$01, $7C, $13	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	38		; Level
	dc.b	$01, $CD, $D0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	39		; Level
	dc.b	$02, $30, $08	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	40		; Level
	dc.b	$02, $A7, $26	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 6  , 15 , 9  , 8  , 10 , 10 , 6  , 5  , $00

	dc.b	41		; Level
	dc.b	$03, $13, $AE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	42		; Level
	dc.b	$03, $91, $8F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	43		; Level
	dc.b	$03, $CB, $20	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	44		; Level
	dc.b	$04, $08, $52	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	45		; Level
	dc.b	$04, $49, $5E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	46		; Level
	dc.b	$04, $8E, $85	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	47		; Level
	dc.b	$04, $D8, $07	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 2  , $00

	dc.b	48		; Level
	dc.b	$05, $26, $2B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 6  , 15 , 9  , 8  , 10 , 10 , 6  , 5  , $00

	dc.b	49		; Level
	dc.b	$05, $79, $3B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 2  , 1  , 1  , 1  , 1  , 2  , 1  , $00

	dc.b	50		; Level
	dc.b	$05, $D1, $88	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 2  , 1  , 1  , 1  , 1  , 1  , 2  , $00

; ==============================================================

RudoExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	44 , 0  , 60 , 28 , 15 , 7  , 12 , 10 , 12 , $00

	dc.b	2		; Level
	dc.b	$00, $00, $20	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $5B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 0  , 13 , 6  , 6  , 8  , 6  , 5  , 8  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $BA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	5		; Level
	dc.b	$00, $01, $3C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	6		; Level
	dc.b	$00, $02, $27	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 8  , $00

	dc.b	7		; Level
	dc.b	$00, $03, $73	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	8		; Level
	dc.b	$00, $05, $60	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	9		; Level
	dc.b	$00, $08, $3C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 8  , $00

	dc.b	10		; Level
	dc.b	$00, $0C, $7B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 6  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	11		; Level
	dc.b	$00, $12, $AD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 6  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	12		; Level
	dc.b	$00, $1B, $C3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 9  , 6  , 6  , 8  , 6  , 6  , 8  , $00

	dc.b	13		; Level
	dc.b	$00, $29, $12	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	14		; Level
	dc.b	$00, $3C, $75	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	15		; Level
	dc.b	$00, $58, $B6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 8  , $00

	dc.b	16		; Level
	dc.b	$00, $81, $E0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	17		; Level
	dc.b	$00, $BD, $D7	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	18		; Level
	dc.b	$01, $14, $F1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 8  , $00

	dc.b	19		; Level
	dc.b	$01, $72, $E9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 2  , 3  , 3  , 2  , 3  , 3  , 6  , $00

	dc.b	20		; Level
	dc.b	$01, $D9, $CB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 7  , $00

	dc.b	21		; Level
	dc.b	$02, $4D, $86	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 15 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	22		; Level
	dc.b	$02, $CD, $B3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	23		; Level
	dc.b	$03, $63, $79	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	24		; Level
	dc.b	$04, $0E, $A1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	25		; Level
	dc.b	$04, $CF, $48	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	26		; Level
	dc.b	$05, $A5, $AD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	27		; Level
	dc.b	$06, $90, $49	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	28		; Level
	dc.b	$07, $90, $F6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	29		; Level
	dc.b	$08, $A6, $6A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	30		; Level
	dc.b	$09, $D1, $BA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	31		; Level
	dc.b	$0B, $53, $91	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	32		; Level
	dc.b	$0C, $CC, $83	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	33		; Level
	dc.b	$0E, $76, $75	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	34		; Level
	dc.b	$10, $57, $C7	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	35		; Level
	dc.b	$12, $77, $AB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	36		; Level
	dc.b	$14, $DE, $45	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	37		; Level
	dc.b	$17, $94, $C3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	38		; Level
	dc.b	$1A, $A5, $8A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	39		; Level
	dc.b	$1E, $1C, $58	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	40		; Level
	dc.b	$22, $06, $6E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	41		; Level
	dc.b	$26, $72, $C9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	42		; Level
	dc.b	$2B, $72, $58	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	43		; Level
	dc.b	$31, $18, $40	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	44		; Level
	dc.b	$37, $7A, $20	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	45		; Level
	dc.b	$3E, $B0, $66	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	46		; Level
	dc.b	$46, $D6, $B1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	47		; Level
	dc.b	$50, $0C, $34	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

	dc.b	48		; Level
	dc.b	$5A, $74, $30	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	9  , 0  , 13 , 6  , 6  , 8  , 6  , 6  , 4  , $00

	dc.b	49		; Level
	dc.b	$66, $36, $7F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 4  , 3  , 3  , 2  , 3  , 3  , 2  , $00

	dc.b	50		; Level
	dc.b	$73, $80, $23	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 0  , 4  , 3  , 3  , 2  , 3  , 4  , 3  , $00

; ==============================================================

AmyExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 18 , 13 , 24 , 5  , 8  , 16 , 7  , 4  , $11

	dc.b	2		; Level
	dc.b	$00, $00, $23	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $10

	dc.b	3		; Level
	dc.b	$00, $00, $63	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 6  , 3  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $CB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $10

	dc.b	5		; Level
	dc.b	$00, $01, $59	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $11

	dc.b	6		; Level
	dc.b	$00, $02, $59	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $11

	dc.b	7		; Level
	dc.b	$00, $03, $C5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	8		; Level
	dc.b	$00, $05, $E0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	9		; Level
	dc.b	$00, $09, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 17 , 3  , 3  , $11

	dc.b	10		; Level
	dc.b	$00, $0D, $A3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $11

	dc.b	11		; Level
	dc.b	$00, $14, $69	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	12		; Level
	dc.b	$00, $1E, $56	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $11

	dc.b	13		; Level
	dc.b	$00, $2C, $E1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	14		; Level
	dc.b	$00, $42, $10	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 4  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	15		; Level
	dc.b	$00, $60, $EF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $21

	dc.b	16		; Level
	dc.b	$00, $8D, $EB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 4  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	17		; Level
	dc.b	$00, $CF, $71	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	18		; Level
	dc.b	$01, $27, $FB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	19		; Level
	dc.b	$01, $95, $4E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	20		; Level
	dc.b	$02, $05, $BA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	21		; Level
	dc.b	$02, $84, $30	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	22		; Level
	dc.b	$03, $10, $3F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	23		; Level
	dc.b	$03, $B3, $EA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	24		; Level
	dc.b	$04, $6E, $F1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $11

	dc.b	25		; Level
	dc.b	$05, $41, $74	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	26		; Level
	dc.b	$06, $2B, $BB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	27		; Level
	dc.b	$07, $2C, $17	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $11

	dc.b	28		; Level
	dc.b	$08, $44, $91	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	29		; Level
	dc.b	$09, $73, $C0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	30		; Level
	dc.b	$0A, $BA, $D1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $11

	dc.b	31		; Level
	dc.b	$0C, $60, $6F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 6  , 3  , 2  , 2  , $00

	dc.b	32		; Level
	dc.b	$0D, $FC, $55	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	33		; Level
	dc.b	$0F, $CD, $C6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 6  , 7  , 3  , 3  , $00

	dc.b	34		; Level
	dc.b	$11, $DB, $BA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	35		; Level
	dc.b	$14, $2E, $0D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	36		; Level
	dc.b	$16, $CD, $A4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	37		; Level
	dc.b	$19, $C4, $88	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	38		; Level
	dc.b	$1D, $1E, $14	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	39		; Level
	dc.b	$20, $E7, $1D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $10

	dc.b	40		; Level
	dc.b	$24, $DF, $FF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	41		; Level
	dc.b	$2A, $03, $7A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	42		; Level
	dc.b	$2F, $79, $B0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	43		; Level
	dc.b	$35, $A5, $AA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	44		; Level
	dc.b	$3C, $9F, $0B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 4  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	45		; Level
	dc.b	$44, $80, $84	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	46		; Level
	dc.b	$4D, $68, $44	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 4  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	47		; Level
	dc.b	$57, $78, $62	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

	dc.b	48		; Level
	dc.b	$62, $D7, $65	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 6  , 7  , 4  , 8  , 7  , 3  , 3  , $10

	dc.b	49		; Level
	dc.b	$6F, $B0, $D6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 2  , $00

	dc.b	50		; Level
	dc.b	$7E, $35, $E7	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 3  , 2  , 3  , $00

; ==============================================================

HughExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	16 , 19 , 14 , 26 , 8  , 6  , 10 , 7  , 6  , $00

	dc.b	2		; Level
	dc.b	$00, $00, $22	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $10

	dc.b	3		; Level
	dc.b	$00, $00, $60	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 3  , $20

	dc.b	4		; Level
	dc.b	$00, $00, $C5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	5		; Level
	dc.b	$00, $01, $4F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $20

	dc.b	6		; Level
	dc.b	$00, $02, $48	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	7		; Level
	dc.b	$00, $03, $A9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	8		; Level
	dc.b	$00, $05, $B4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $11

	dc.b	9		; Level
	dc.b	$00, $08, $BD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 4  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	10		; Level
	dc.b	$00, $0D, $3D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	11		; Level
	dc.b	$00, $13, $D0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	12		; Level
	dc.b	$00, $1D, $73	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 3  , $10

	dc.b	13		; Level
	dc.b	$00, $2B, $92	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	14		; Level
	dc.b	$00, $40, $23	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	15		; Level
	dc.b	$00, $5E, $1D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	16		; Level
	dc.b	$00, $89, $C9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	17		; Level
	dc.b	$00, $C9, $66	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	18		; Level
	dc.b	$01, $25, $CE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 4  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	19		; Level
	dc.b	$01, $89, $80	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	20		; Level
	dc.b	$01, $F6, $A6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 4  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	21		; Level
	dc.b	$02, $71, $6D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 4  , 7  , 5  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	22		; Level
	dc.b	$02, $F9, $68	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	23		; Level
	dc.b	$03, $98, $4E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	24		; Level
	dc.b	$04, $4D, $E2	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	25		; Level
	dc.b	$05, $1A, $44	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	26		; Level
	dc.b	$05, $FD, $B8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 0  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	27		; Level
	dc.b	$06, $F6, $9D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 7  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	28		; Level
	dc.b	$08, $06, $EC	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	29		; Level
	dc.b	$09, $2D, $46	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	30		; Level
	dc.b	$0A, $6A, $D0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	007, 005, 007, 005, 004, 008, 007, 003, 003, $10
							; This ^
							; is where Hugh learns Gires, but
		; the increment for the techniques learned only applies to the battle techniques.
		; I'm not sure if this was intentional, but if you don't like this,
                ; replace the value $10 with $11 and it will be fine.

	dc.b	31		; Level
	dc.b	$0C, $04, $26	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	32		; Level
	dc.b	$0D, $94, $0D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	33		; Level
	dc.b	$0F, $57, $F0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	34		; Level
	dc.b	$11, $56, $92	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	35		; Level
	dc.b	$13, $97, $95	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	36		; Level
	dc.b	$16, $23, $9D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $10

	dc.b	37		; Level
	dc.b	$19, $04, $66	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	38		; Level
	dc.b	$1C, $44, $F8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	39		; Level
	dc.b	$1F, $F1, $C8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 7  , 7  , 5  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	40		; Level
	dc.b	$24, $18, $E5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	41		; Level
	dc.b	$28, $CA, $36	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	42		; Level
	dc.b	$2E, $17, $B2	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $00

	dc.b	43		; Level
	dc.b	$34, $15, $A8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	44		; Level
	dc.b	$3A, $DB, $09	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	45		; Level
	dc.b	$42, $81, $BF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 5  , 7  , 5  , 4  , 8  , 7  , 3  , 4  , $00

	dc.b	46		; Level
	dc.b	$4B, $27, $18	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

	dc.b	47		; Level
	dc.b	$54, $EC, $2D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	48		; Level
	dc.b	$5F, $F6, $67	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 7  , 5  , 4  , 8  , 7  , 3  , 3  , $00

	dc.b	49		; Level
	dc.b	$6C, $70, $09	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 3  , 3  , 2  , 4  , 2  , 3  , 3  , $00

	dc.b	50		; Level
	dc.b	$7A, $88, $D6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 3  , 2  , 4  , 2  , 3  , 2  , $00

; ==============================================================

AnnaExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	18 , 12 , 20 , 27 , 20 , 9  , 15 , 12 , 11 , $10

	dc.b	2		; Level
	dc.b	$00, $00, $1F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $58	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $B4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	5		; Level
	dc.b	$00, $01, $32	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	6		; Level
	dc.b	$00, $02, $17	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $10

	dc.b	7		; Level
	dc.b	$00, $03, $59	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	8		; Level
	dc.b	$00, $05, $38	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $10

	dc.b	9		; Level
	dc.b	$00, $07, $FF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	10		; Level
	dc.b	$00, $0C, $1E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	11		; Level
	dc.b	$00, $12, $22	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	12		; Level
	dc.b	$00, $1A, $F4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	13		; Level
	dc.b	$00, $27, $DF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	14		; Level
	dc.b	$00, $3A, $B2	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	15		; Level
	dc.b	$00, $56, $20	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	16		; Level
	dc.b	$00, $7E, $18	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 7  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $10

	dc.b	17		; Level
	dc.b	$00, $B8, $4F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	18		; Level
	dc.b	$01, $0C, $E0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	19		; Level
	dc.b	$01, $68, $1B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	20		; Level
	dc.b	$01, $CB, $FE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	21		; Level
	dc.b	$02, $3C, $5B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	22		; Level
	dc.b	$02, $B8, $CB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	23		; Level
	dc.b	$03, $4A, $35	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	24		; Level
	dc.b	$03, $F0, $61	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $00

	dc.b	25		; Level
	dc.b	$04, $AB, $6B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	26		; Level
	dc.b	$05, $7B, $92	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	27		; Level
	dc.b	$06, $5F, $58	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	28		; Level
	dc.b	$07, $58, $8B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	29		; Level
	dc.b	$08, $65, $EB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	30		; Level
	dc.b	$09, $88, $83	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	31		; Level
	dc.b	$0A, $FF, $1D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	32		; Level
	dc.b	$0C, $6D, $14	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $10

	dc.b	33		; Level
	dc.b	$0E, $0A, $9E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	34		; Level
	dc.b	$0F, $DD, $EB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	35		; Level
	dc.b	$11, $ED, $F8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	36		; Level
	dc.b	$14, $42, $AB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	37		; Level
	dc.b	$16, $E4, $B3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	38		; Level
	dc.b	$19, $DE, $DA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	39		; Level
	dc.b	$1D, $3B, $D4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	40		; Level
	dc.b	$21, $08, $BA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $00

	dc.b	41		; Level
	dc.b	$25, $54, $1A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	42		; Level
	dc.b	$2A, $2E, $65	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	43		; Level
	dc.b	$2F, $AA, $2F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 1  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	44		; Level
	dc.b	$35, $DC, $78	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	45		; Level
	dc.b	$3C, $DC, $F8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	46		; Level
	dc.b	$44, $C6, $7F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	47		; Level
	dc.b	$4D, $B7, $57	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 4  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	48		; Level
	dc.b	$57, $D1, $BD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 6  , 16 , 13 , 20 , 17 , 25 , 4  , 11 , $00

	dc.b	49		; Level
	dc.b	$63, $3C, $5D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 4  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	50		; Level
	dc.b	$70, $22, $EE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 1  , 4  , 2  , 2  , 3  , 3  , 2  , 2  , $00

; ==============================================================

KainExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	16 , 8  , 15 , 10 , 14 , 11 , 8  , 8  , 8  , $20

	dc.b	2		; Level
	dc.b	$00, $00, $21	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $5D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $BF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $10

	dc.b	5		; Level
	dc.b	$00, $01, $45	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	6		; Level
	dc.b	$00, $02, $37	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	7		; Level
	dc.b	$00, $03, $8D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 12 , 18 , 15 , 12 , 18 , 17 , 7  , 7  , $20

	dc.b	8		; Level
	dc.b	$00, $05, $8A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	9		; Level
	dc.b	$00, $08, $7C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $10

	dc.b	10		; Level
	dc.b	$00, $0C, $DA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $20

	dc.b	11		; Level
	dc.b	$00, $13, $3D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	12		; Level
	dc.b	$00, $1C, $98	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	13		; Level
	dc.b	$00, $2A, $4D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $10

	dc.b	14		; Level
	dc.b	$00, $3E, $45	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 11 , 18 , 15 , 12 , 18 , 17 , 7  , 7  , $10

	dc.b	15		; Level
	dc.b	$00, $5B, $5F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	16		; Level
	dc.b	$00, $85, $C5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 4  , $00

	dc.b	17		; Level
	dc.b	$00, $C3, $89	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $10

	dc.b	18		; Level
	dc.b	$01, $1D, $40	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	19		; Level
	dc.b	$01, $7E, $0A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	20		; Level
	dc.b	$01, $E8, $0A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	21		; Level
	dc.b	$02, $5F, $36	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 11 , 18 , 15 , 12 , 18 , 17 , 7  , 7  , $10

	dc.b	22		; Level
	dc.b	$02, $E3, $3B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	23		; Level
	dc.b	$03, $7D, $80	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	24		; Level
	dc.b	$04, $2D, $CA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	25		; Level
	dc.b	$04, $F4, $38	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 4  , $10

	dc.b	26		; Level
	dc.b	$05, $D1, $0C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	27		; Level
	dc.b	$06, $C2, $B1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 3  , $00

	dc.b	28		; Level
	dc.b	$07, $CB, $11	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 11 , 18 , 15 , 12 , 18 , 17 , 9  , 7  , $10

	dc.b	29		; Level
	dc.b	$08, $E8, $D9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 4  , $00

	dc.b	30		; Level
	dc.b	$0A, $1D, $24	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	31		; Level
	dc.b	$0B, $AA, $8E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $10

	dc.b	32		; Level
	dc.b	$0D, $2E, $CE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	33		; Level
	dc.b	$0E, $E5, $88	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 4  , $00

	dc.b	34		; Level
	dc.b	$10, $D5, $4A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	35		; Level
	dc.b	$13, $05, $80	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 11 , 18 , 15 , 12 , 18 , 17 , 9  , 7  , $00

	dc.b	36		; Level
	dc.b	$15, $7E, $89	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	37		; Level
	dc.b	$18, $49, $DD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	38		; Level
	dc.b	$1B, $72, $2F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 4  , $00

	dc.b	39		; Level
	dc.b	$1F, $03, $98	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	40		; Level
	dc.b	$23, $0B, $C8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	41		; Level
	dc.b	$27, $9A, $11	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	42		; Level
	dc.b	$2C, $C0, $04	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 11 , 18 , 15 , 12 , 18 , 17 , 9  , 7  , $00

	dc.b	43		; Level
	dc.b	$32, $91, $4C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 4  , $00

	dc.b	44		; Level
	dc.b	$39, $24, $30	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	45		; Level
	dc.b	$40, $91, $D9	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

	dc.b	46		; Level
	dc.b	$48, $F6, $BB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 3  , 3  , 2  , 2  , 3  , 3  , 3  , 2  , $00

	dc.b	47		; Level
	dc.b	$52, $72, $F8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 2  , $00

	dc.b	48		; Level
	dc.b	$5D, $2A, $E0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 2  , 3  , 3  , 3  , 4  , $00

	dc.b	49		; Level
	dc.b	$69, $47, $7D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	7  , 12 , 18 , 15 , 12 , 18 , 17 , 9  , 7  , $00

	dc.b	50		; Level
	dc.b	$76, $F7, $2E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 2  , 3  , 3  , 2  , 3  , $00

; ==============================================================

ShirExpTable:

	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	13 , 6  , 18 , 10 , 15 , 12 , 18 , 9  , 9  , $10

	dc.b	2		; Level
	dc.b	$00, $00, $21	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	3		; Level
	dc.b	$00, $00, $55	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $00

	dc.b	4		; Level
	dc.b	$00, $00, $AF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	5		; Level
	dc.b	$00, $01, $2A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 3  , 2  , 4  , 2  , 3  , 5  , 3  , $00

	dc.b	6		; Level
	dc.b	$00, $02, $07	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $01

	dc.b	7		; Level
	dc.b	$00, $03, $40	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	8		; Level
	dc.b	$00, $05, $11	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	9		; Level
	dc.b	$00, $07, $C3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $01

	dc.b	10		; Level
	dc.b	$00, $0B, $C3	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	11		; Level
	dc.b	$00, $11, $9B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	2  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	12		; Level
	dc.b	$00, $1A, $2B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $11

	dc.b	13		; Level
	dc.b	$00, $26, $B6	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	14		; Level
	dc.b	$00, $38, $FC	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	15		; Level
	dc.b	$00, $53, $9E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $10

	dc.b	16		; Level
	dc.b	$00, $7A, $6B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	17		; Level
	dc.b	$00, $B2, $F1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	2  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	18		; Level
	dc.b	$01, $05, $0B	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $10

	dc.b	19		; Level
	dc.b	$01, $5D, $9E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	20		; Level
	dc.b	$01, $BE, $98	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	21		; Level
	dc.b	$02, $2B, $AF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 3  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $00

	dc.b	22		; Level
	dc.b	$02, $A4, $80	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 2  , 3  , 2  , 4  , 2  , 3  , 5  , 3  , $00

	dc.b	23		; Level
	dc.b	$03, $31, $AD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	2  , 2  , 3  , 2  , 4  , 2  , 3  , 1  , 3  , $00

	dc.b	24		; Level
	dc.b	$03, $D3, $02	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $10

	dc.b	25		; Level
	dc.b	$04, $88, $99	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	26		; Level
	dc.b	$05, $52, $B0	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	27		; Level
	dc.b	$06, $2F, $D4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $10

	dc.b	28		; Level
	dc.b	$07, $21, $C5	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 4  , 3  , $00

	dc.b	29		; Level
	dc.b	$08, $27, $4C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	30		; Level
	dc.b	$09, $41, $6E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $11

	dc.b	31		; Level
	dc.b	$0A, $AD, $1F	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	32		; Level
	dc.b	$0C, $10, $6D	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	2  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	33		; Level
	dc.b	$0D, $A1, $EB	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $10

	dc.b	34		; Level
	dc.b	$0F, $67, $9C	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	35		; Level
	dc.b	$11, $68, $48	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 4  , 3  , $00

	dc.b	36		; Level
	dc.b	$13, $AB, $9A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $10

	dc.b	37		; Level
	dc.b	$16, $3A, $3A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 4  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	38		; Level
	dc.b	$19, $1D, $F4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	39		; Level
	dc.b	$1C, $61, $DA	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	6  , 3  , 6  , 3  , 6  , 6  , 6  , 3  , 4  , $00

	dc.b	40		; Level
	dc.b	$20, $12, $6A	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	8  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	41		; Level
	dc.b	$24, $3D, $C4	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 2  , 3  , 2  , 4  , 2  , 3  , 3  , 3  , $00

	dc.b	42		; Level
	dc.b	$28, $F3, $E1	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $00

	dc.b	43		; Level
	dc.b	$2E, $46, $C8	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 1  , 3  , $00

	dc.b	44		; Level
	dc.b	$34, $4A, $DD	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	45		; Level
	dc.b	$3B, $17, $27	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	5  , 3  , 7  , 3  , 6  , 6  , 6  , 3  , 4  , $10

	dc.b	46		; Level
	dc.b	$42, $C5, $AF	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

	dc.b	47		; Level
	dc.b	$4B, $73, $DE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 3  , 2  , 4  , 2  , 3  , 1  , 3  , $00

	dc.b	48		; Level
	dc.b	$55, $42, $EE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	4  , 2  , 7  , 3  , 6  , 6  , 6  , 4  , 4  , $00

	dc.b	49		; Level
	dc.b	$60, $58, $6E	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	10 , 2  , 3  , 2  , 4  , 2  , 3  , 1  , 3  , $00

	dc.b	50		; Level
	dc.b	$6C, $DE, $CE	; Experience points

;		HP   TP   STR  MEN  AGI  LUCK DEX  ATK  DEF
	dc.b	3  , 2  , 3  , 2  , 4  , 2  , 3  , 2  , 3  , $00

; ==============================================================
