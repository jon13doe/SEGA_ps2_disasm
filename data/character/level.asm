; =============================================================================
; Experience table
;
; byte 1 = character level
; bytes 2-4 = experience points
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
	dc.b	$13, $0F, $14, $1C, $0F, $0D, $14, $0C, $0A, $10
	
	dc.b	2		; Level
	dc.b	$00, $00, $1D	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $53	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $AA	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $05, $01
	
	dc.b	5		; Level
	dc.b	$00, $01, $21	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $20
	
	dc.b	6		; Level
	dc.b	$00, $01, $F8	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	7		; Level
	dc.b	$00, $03, $28	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $11
	
	dc.b	8		; Level
	dc.b	$00, $04, $EC	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $11
	
	dc.b	9		; Level
	dc.b	$00, $07, $8A	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	10		; Level
	dc.b	$00, $0B, $6C	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $10
	
	dc.b	11		; Level
	dc.b	$00, $11, $17	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $10
	
	dc.b	12		; Level
	dc.b	$00, $19, $68	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	13		; Level
	dc.b	$00, $25, $96	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	14		; Level
	dc.b	$00, $37, $54	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $10
	
	dc.b	15		; Level
	dc.b	$00, $51, $2F	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	16		; Level
	dc.b	$00, $76, $DB	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $21
	
	dc.b	17		; Level
	dc.b	$00, $AD, $BB	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	18		; Level
	dc.b	$00, $FD, $71	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	19		; Level
	dc.b	$01, $53, $70	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	20		; Level
	dc.b	$01, $B1, $97	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $10
	
	dc.b	21		; Level
	dc.b	$02, $1B, $80	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	22		; Level
	dc.b	$02, $90, $CC	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	23		; Level
	dc.b	$03, $19, $DD	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	24		; Level
	dc.b	$03, $B6, $7F	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $10
	
	dc.b	25		; Level
	dc.b	$04, $66, $CC	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	26		; Level
	dc.b	$05, $2B, $00	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	27		; Level
	dc.b	$06, $01, $B3	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	28		; Level
	dc.b	$06, $EC, $98	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $10
	
	dc.b	29		; Level
	dc.b	$07, $EA, $81	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	30		; Level
	dc.b	$08, $FC, $6B	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $01
	
	dc.b	31		; Level
	dc.b	$0A, $5D, $84	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	32		; Level
	dc.b	$0B, $B6, $79	; Experience points
	dc.b	$09, $06, $0C, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	33		; Level
	dc.b	$0D, $3C, $46	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	34		; Level
	dc.b	$0E, $F4, $C0	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	35		; Level
	dc.b	$10, $E6, $7D	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $10
	
	dc.b	36		; Level
	dc.b	$13, $18, $EF	; Experience points
	dc.b	$09, $06, $0E, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	37		; Level
	dc.b	$15, $94, $7E	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	38		; Level
	dc.b	$18, $62, $AD	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	39		; Level
	dc.b	$1B, $8E, $3A	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	40		; Level
	dc.b	$1F, $23, $47	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	41		; Level
	dc.b	$23, $2F, $8B	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	42		; Level
	dc.b	$27, $C2, $86	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	43		; Level
	dc.b	$2C, $ED, $BB	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	44		; Level
	dc.b	$32, $C4, $F5	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	45		; Level
	dc.b	$39, $5E, $8F	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	46		; Level
	dc.b	$40, $D3, $D0	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00
	
	dc.b	47		; Level
	dc.b	$49, $41, $45	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $06, $05, $00
	
	dc.b	48		; Level
	dc.b	$52, $C7, $32	; Experience points
	dc.b	$09, $06, $0D, $0A, $08, $0A, $0A, $07, $06, $00
	
	dc.b	49		; Level
	dc.b	$5D, $8A, $0D	; Experience points
	dc.b	$06, $03, $05, $04, $03, $04, $04, $04, $03, $00
	
	dc.b	50		; Level
	dc.b	$69, $B3, $09	; Experience points
	dc.b	$07, $03, $05, $04, $03, $04, $04, $05, $04, $00

; ==============================================================

NeiExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$0C, $0A, $0E, $12, $1B, $0A, $0E, $07, $0C, $11
	
	dc.b	2		; Level
	dc.b	$00, $00, $0C	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $19	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $38	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	5		; Level
	dc.b	$00, $00, $53	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	6		; Level
	dc.b	$00, $00, $7C	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	7		; Level
	dc.b	$00, $00, $A9	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	8		; Level
	dc.b	$00, $00, $E9	; Experience points
	dc.b	$06, $04, $0F, $09, $02, $0A, $0A, $06, $05, $00
	
	dc.b	9		; Level
	dc.b	$00, $01, $2F	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	10		; Level
	dc.b	$00, $01, $8C	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	11		; Level
	dc.b	$00, $01, $FE	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	12		; Level
	dc.b	$00, $02, $91	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	13		; Level
	dc.b	$00, $03, $40	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	14		; Level
	dc.b	$00, $04, $1E	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	15		; Level
	dc.b	$00, $05, $1E	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	16		; Level
	dc.b	$00, $06, $5D	; Experience points
	dc.b	$06, $04, $0F, $09, $02, $0A, $0A, $06, $05, $01
	
	dc.b	17		; Level
	dc.b	$00, $07, $E4	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	18		; Level
	dc.b	$00, $09, $CA	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	19		; Level
	dc.b	$00, $0C, $0B	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	20		; Level
	dc.b	$00, $0E, $D1	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $11
	
	dc.b	21		; Level
	dc.b	$00, $11, $EF	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	22		; Level
	dc.b	$00, $15, $B5	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	23		; Level
	dc.b	$00, $1A, $10	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	24		; Level
	dc.b	$00, $1F, $4D	; Experience points
	dc.b	$06, $04, $0F, $09, $02, $0A, $0A, $06, $05, $11
	
	dc.b	25		; Level
	dc.b	$00, $25, $81	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	26		; Level
	dc.b	$00, $2C, $F2	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	27		; Level
	dc.b	$00, $35, $EA	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	28		; Level
	dc.b	$00, $40, $AE	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	29		; Level
	dc.b	$00, $4E, $F4	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	30		; Level
	dc.b	$00, $60, $62	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	31		; Level
	dc.b	$00, $75, $FF	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	32		; Level
	dc.b	$00, $90, $77	; Experience points
	dc.b	$06, $04, $0F, $09, $02, $0A, $0A, $06, $05, $00
	
	dc.b	33		; Level
	dc.b	$00, $B0, $48	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $01, $00
	
	dc.b	34		; Level
	dc.b	$00, $D7, $1D	; Experience points
	dc.b	$04, $02, $02, $01, $02, $01, $01, $02, $02, $00
	
	dc.b	35		; Level
	dc.b	$01, $03, $66	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	36		; Level
	dc.b	$01, $38, $CE	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	37		; Level
	dc.b	$01, $7C, $13	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	38		; Level
	dc.b	$01, $CD, $D0	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	39		; Level
	dc.b	$02, $30, $08	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	40		; Level
	dc.b	$02, $A7, $26	; Experience points
	dc.b	$06, $06, $0F, $09, $08, $0A, $0A, $06, $05, $00
	
	dc.b	41		; Level
	dc.b	$03, $13, $AE	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	42		; Level
	dc.b	$03, $91, $8F	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	43		; Level
	dc.b	$03, $CB, $20	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	44		; Level
	dc.b	$04, $08, $52	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	45		; Level
	dc.b	$04, $49, $5E	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	46		; Level
	dc.b	$04, $8E, $85	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	47		; Level
	dc.b	$04, $D8, $07	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $02, $00
	
	dc.b	48		; Level
	dc.b	$05, $26, $2B	; Experience points
	dc.b	$06, $06, $0F, $09, $08, $0A, $0A, $06, $05, $00
	
	dc.b	49		; Level
	dc.b	$05, $79, $3B	; Experience points
	dc.b	$04, $01, $02, $01, $01, $01, $01, $02, $01, $00
	
	dc.b	50		; Level
	dc.b	$05, $D1, $88	; Experience points
	dc.b	$04, $02, $02, $01, $01, $01, $01, $01, $02, $00

; ==============================================================

RudoExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$2C, $00, $3C, $1C, $0F, $07, $0C, $0A, $0C, $00
	
	dc.b	2		; Level
	dc.b	$00, $00, $20	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $5B	; Experience points
	dc.b	$07, $00, $0D, $06, $06, $08, $06, $05, $08, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $BA	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	5		; Level
	dc.b	$00, $01, $3C	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	6		; Level
	dc.b	$00, $02, $27	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $08, $00
	
	dc.b	7		; Level
	dc.b	$00, $03, $73	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	8		; Level
	dc.b	$00, $05, $60	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	9		; Level
	dc.b	$00, $08, $3C	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $08, $00
	
	dc.b	10		; Level
	dc.b	$00, $0C, $7B	; Experience points
	dc.b	$06, $00, $06, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	11		; Level
	dc.b	$00, $12, $AD	; Experience points
	dc.b	$08, $00, $06, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	12		; Level
	dc.b	$00, $1B, $C3	; Experience points
	dc.b	$09, $00, $09, $06, $06, $08, $06, $06, $08, $00
	
	dc.b	13		; Level
	dc.b	$00, $29, $12	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	14		; Level
	dc.b	$00, $3C, $75	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	15		; Level
	dc.b	$00, $58, $B6	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $08, $00
	
	dc.b	16		; Level
	dc.b	$00, $81, $E0	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	17		; Level
	dc.b	$00, $BD, $D7	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	18		; Level
	dc.b	$01, $14, $F1	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $08, $00
	
	dc.b	19		; Level
	dc.b	$01, $72, $E9	; Experience points
	dc.b	$06, $00, $02, $03, $03, $02, $03, $03, $06, $00
	
	dc.b	20		; Level
	dc.b	$01, $D9, $CB	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $07, $00
	
	dc.b	21		; Level
	dc.b	$02, $4D, $86	; Experience points
	dc.b	$09, $00, $0F, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	22		; Level
	dc.b	$02, $CD, $B3	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	23		; Level
	dc.b	$03, $63, $79	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	24		; Level
	dc.b	$04, $0E, $A1	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	25		; Level
	dc.b	$04, $CF, $48	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	26		; Level
	dc.b	$05, $A5, $AD	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	27		; Level
	dc.b	$06, $90, $49	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	28		; Level
	dc.b	$07, $90, $F6	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	29		; Level
	dc.b	$08, $A6, $6A	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	30		; Level
	dc.b	$09, $D1, $BA	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	31		; Level
	dc.b	$0B, $53, $91	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	32		; Level
	dc.b	$0C, $CC, $83	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	33		; Level
	dc.b	$0E, $76, $75	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	34		; Level
	dc.b	$10, $57, $C7	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	35		; Level
	dc.b	$12, $77, $AB	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	36		; Level
	dc.b	$14, $DE, $45	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	37		; Level
	dc.b	$17, $94, $C3	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	38		; Level
	dc.b	$1A, $A5, $8A	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	39		; Level
	dc.b	$1E, $1C, $58	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	40		; Level
	dc.b	$22, $06, $6E	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	41		; Level
	dc.b	$26, $72, $C9	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	42		; Level
	dc.b	$2B, $72, $58	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	43		; Level
	dc.b	$31, $18, $40	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	44		; Level
	dc.b	$37, $7A, $20	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	45		; Level
	dc.b	$3E, $B0, $66	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	46		; Level
	dc.b	$46, $D6, $B1	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	47		; Level
	dc.b	$50, $0C, $34	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00
	
	dc.b	48		; Level
	dc.b	$5A, $74, $30	; Experience points
	dc.b	$09, $00, $0D, $06, $06, $08, $06, $06, $04, $00
	
	dc.b	49		; Level
	dc.b	$66, $36, $7F	; Experience points
	dc.b	$06, $00, $04, $03, $03, $02, $03, $03, $02, $00
	
	dc.b	50		; Level
	dc.b	$73, $80, $23	; Experience points
	dc.b	$08, $00, $04, $03, $03, $02, $03, $04, $03, $00

; ==============================================================

AmyExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$0A, $12, $0D, $18, $05, $08, $10, $07, $04, $11
	
	dc.b	2		; Level
	dc.b	$00, $00, $23	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $10
	
	dc.b	3		; Level
	dc.b	$00, $00, $63	; Experience points
	dc.b	$07, $03, $06, $03, $04, $08, $07, $03, $03, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $CB	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $10
	
	dc.b	5		; Level
	dc.b	$00, $01, $59	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $11
	
	dc.b	6		; Level
	dc.b	$00, $02, $59	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $11
	
	dc.b	7		; Level
	dc.b	$00, $03, $C5	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	8		; Level
	dc.b	$00, $05, $E0	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	9		; Level
	dc.b	$00, $09, $00	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $11, $03, $03, $11
	
	dc.b	10		; Level
	dc.b	$00, $0D, $A3	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $11
	
	dc.b	11		; Level
	dc.b	$00, $14, $69	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	12		; Level
	dc.b	$00, $1E, $56	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $11
	
	dc.b	13		; Level
	dc.b	$00, $2C, $E1	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	14		; Level
	dc.b	$00, $42, $10	; Experience points
	dc.b	$05, $04, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	15		; Level
	dc.b	$00, $60, $EF	; Experience points
	dc.b	$07, $05, $06, $07, $04, $08, $07, $03, $03, $21
	
	dc.b	16		; Level
	dc.b	$00, $8D, $EB	; Experience points
	dc.b	$05, $04, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	17		; Level
	dc.b	$00, $CF, $71	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	18		; Level
	dc.b	$01, $27, $FB	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $00
	
	dc.b	19		; Level
	dc.b	$01, $95, $4E	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	20		; Level
	dc.b	$02, $05, $BA	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	21		; Level
	dc.b	$02, $84, $30	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $00
	
	dc.b	22		; Level
	dc.b	$03, $10, $3F	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	23		; Level
	dc.b	$03, $B3, $EA	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	24		; Level
	dc.b	$04, $6E, $F1	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $11
	
	dc.b	25		; Level
	dc.b	$05, $41, $74	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	26		; Level
	dc.b	$06, $2B, $BB	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	27		; Level
	dc.b	$07, $2C, $17	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $11
	
	dc.b	28		; Level
	dc.b	$08, $44, $91	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	29		; Level
	dc.b	$09, $73, $C0	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	30		; Level
	dc.b	$0A, $BA, $D1	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $11
	
	dc.b	31		; Level
	dc.b	$0C, $60, $6F	; Experience points
	dc.b	$05, $03, $03, $03, $02, $06, $03, $02, $02, $00
	
	dc.b	32		; Level
	dc.b	$0D, $FC, $55	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	33		; Level
	dc.b	$0F, $CD, $C6	; Experience points
	dc.b	$07, $06, $06, $07, $04, $06, $07, $03, $03, $00
	
	dc.b	34		; Level
	dc.b	$11, $DB, $BA	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	35		; Level
	dc.b	$14, $2E, $0D	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	36		; Level
	dc.b	$16, $CD, $A4	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $00
	
	dc.b	37		; Level
	dc.b	$19, $C4, $88	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	38		; Level
	dc.b	$1D, $1E, $14	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	39		; Level
	dc.b	$20, $E7, $1D	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $10
	
	dc.b	40		; Level
	dc.b	$24, $DF, $FF	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	41		; Level
	dc.b	$2A, $03, $7A	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	42		; Level
	dc.b	$2F, $79, $B0	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $00
	
	dc.b	43		; Level
	dc.b	$35, $A5, $AA	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	44		; Level
	dc.b	$3C, $9F, $0B	; Experience points
	dc.b	$05, $04, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	45		; Level
	dc.b	$44, $80, $84	; Experience points
	dc.b	$07, $05, $06, $07, $04, $08, $07, $03, $03, $00
	
	dc.b	46		; Level
	dc.b	$4D, $68, $44	; Experience points
	dc.b	$05, $04, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	47		; Level
	dc.b	$57, $78, $62	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00
	
	dc.b	48		; Level
	dc.b	$62, $D7, $65	; Experience points
	dc.b	$07, $06, $06, $07, $04, $08, $07, $03, $03, $10
	
	dc.b	49		; Level
	dc.b	$6F, $B0, $D6	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $02, $00
	
	dc.b	50		; Level
	dc.b	$7E, $35, $E7	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $03, $02, $03, $00

; ==============================================================

HughExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$10, $13, $0E, $1A, $08, $06, $0A, $07, $06, $00
	
	dc.b	2		; Level
	dc.b	$00, $00, $22	; Experience points
	dc.b	$04, $03, $03, $03, $02, $04, $02, $03, $03, $10
	
	dc.b	3		; Level
	dc.b	$00, $00, $60	; Experience points
	dc.b	$06, $05, $07, $05, $04, $08, $07, $03, $03, $20
	
	dc.b	4		; Level
	dc.b	$00, $00, $C5	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	5		; Level
	dc.b	$00, $01, $4F	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $20
	
	dc.b	6		; Level
	dc.b	$00, $02, $48	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	7		; Level
	dc.b	$00, $03, $A9	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	8		; Level
	dc.b	$00, $05, $B4	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $11
	
	dc.b	9		; Level
	dc.b	$00, $08, $BD	; Experience points
	dc.b	$07, $04, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	10		; Level
	dc.b	$00, $0D, $3D	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	11		; Level
	dc.b	$00, $13, $D0	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	12		; Level
	dc.b	$00, $1D, $73	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $03, $10
	
	dc.b	13		; Level
	dc.b	$00, $2B, $92	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	14		; Level
	dc.b	$00, $40, $23	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	15		; Level
	dc.b	$00, $5E, $1D	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	16		; Level
	dc.b	$00, $89, $C9	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	17		; Level
	dc.b	$00, $C9, $66	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	18		; Level
	dc.b	$01, $25, $CE	; Experience points
	dc.b	$07, $04, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	19		; Level
	dc.b	$01, $89, $80	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	20		; Level
	dc.b	$01, $F6, $A6	; Experience points
	dc.b	$06, $04, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	21		; Level
	dc.b	$02, $71, $6D	; Experience points
	dc.b	$07, $04, $07, $05, $04, $08, $07, $03, $03, $00
	
	dc.b	22		; Level
	dc.b	$02, $F9, $68	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	23		; Level
	dc.b	$03, $98, $4E	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	24		; Level
	dc.b	$04, $4D, $E2	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	25		; Level
	dc.b	$05, $1A, $44	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	26		; Level
	dc.b	$05, $FD, $B8	; Experience points
	dc.b	$06, $00, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	27		; Level
	dc.b	$06, $F6, $9D	; Experience points
	dc.b	$07, $07, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	28		; Level
	dc.b	$08, $06, $EC	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	29		; Level
	dc.b	$09, $2D, $46	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	30		; Level
	dc.b	$0A, $6A, $D0	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $03, $10	; This is where Hugh learns Gires, but the increment for the techniques learned only applies to the battle techniques. I'm not sure if this
																; was intentional, but if you don't like this, replace the value $10 with $11 and it will be fine.
	
	dc.b	31		; Level
	dc.b	$0C, $04, $26	; Experience points
	dc.b	$05, $02, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	32		; Level
	dc.b	$0D, $94, $0D	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	33		; Level
	dc.b	$0F, $57, $F0	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	34		; Level
	dc.b	$11, $56, $92	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	35		; Level
	dc.b	$13, $97, $95	; Experience points
	dc.b	$06, $02, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	36		; Level
	dc.b	$16, $23, $9D	; Experience points
	dc.b	$07, $06, $07, $05, $04, $08, $07, $03, $04, $10
	
	dc.b	37		; Level
	dc.b	$19, $04, $66	; Experience points
	dc.b	$05, $02, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	38		; Level
	dc.b	$1C, $44, $F8	; Experience points
	dc.b	$06, $02, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	39		; Level
	dc.b	$1F, $F1, $C8	; Experience points
	dc.b	$07, $07, $07, $05, $04, $08, $07, $03, $03, $00
	
	dc.b	40		; Level
	dc.b	$24, $18, $E5	; Experience points
	dc.b	$05, $02, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	41		; Level
	dc.b	$28, $CA, $36	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	42		; Level
	dc.b	$2E, $17, $B2	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $00
	
	dc.b	43		; Level
	dc.b	$34, $15, $A8	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	44		; Level
	dc.b	$3A, $DB, $09	; Experience points
	dc.b	$06, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	45		; Level
	dc.b	$42, $81, $BF	; Experience points
	dc.b	$07, $05, $07, $05, $04, $08, $07, $03, $04, $00
	
	dc.b	46		; Level
	dc.b	$4B, $27, $18	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $02, $00
	
	dc.b	47		; Level
	dc.b	$54, $EC, $2D	; Experience points
	dc.b	$06, $02, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	48		; Level
	dc.b	$5F, $F6, $67	; Experience points
	dc.b	$07, $06, $07, $05, $04, $08, $07, $03, $03, $00
	
	dc.b	49		; Level
	dc.b	$6C, $70, $09	; Experience points
	dc.b	$05, $03, $03, $03, $02, $04, $02, $03, $03, $00
	
	dc.b	50		; Level
	dc.b	$7A, $88, $D6	; Experience points
	dc.b	$06, $02, $03, $03, $02, $04, $02, $03, $02, $00

; ==============================================================

AnnaExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$12, $0C, $14, $1B, $14, $09, $0F, $0C, $0B, $10
	
	dc.b	2		; Level
	dc.b	$00, $00, $1F	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $58	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $B4	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	5		; Level
	dc.b	$00, $01, $32	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	6		; Level
	dc.b	$00, $02, $17	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $10
	
	dc.b	7		; Level
	dc.b	$00, $03, $59	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	8		; Level
	dc.b	$00, $05, $38	; Experience points
	dc.b	$07, $06, $10, $0D, $14, $11, $19, $04, $0B, $10
	
	dc.b	9		; Level
	dc.b	$00, $07, $FF	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	10		; Level
	dc.b	$00, $0C, $1E	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	11		; Level
	dc.b	$00, $12, $22	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	12		; Level
	dc.b	$00, $1A, $F4	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	13		; Level
	dc.b	$00, $27, $DF	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	14		; Level
	dc.b	$00, $3A, $B2	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	15		; Level
	dc.b	$00, $56, $20	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	16		; Level
	dc.b	$00, $7E, $18	; Experience points
	dc.b	$07, $07, $10, $0D, $14, $11, $19, $04, $0B, $10
	
	dc.b	17		; Level
	dc.b	$00, $B8, $4F	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	18		; Level
	dc.b	$01, $0C, $E0	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	19		; Level
	dc.b	$01, $68, $1B	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	20		; Level
	dc.b	$01, $CB, $FE	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	21		; Level
	dc.b	$02, $3C, $5B	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	22		; Level
	dc.b	$02, $B8, $CB	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	23		; Level
	dc.b	$03, $4A, $35	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	24		; Level
	dc.b	$03, $F0, $61	; Experience points
	dc.b	$07, $06, $10, $0D, $14, $11, $19, $04, $0B, $00
	
	dc.b	25		; Level
	dc.b	$04, $AB, $6B	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	26		; Level
	dc.b	$05, $7B, $92	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	27		; Level
	dc.b	$06, $5F, $58	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	28		; Level
	dc.b	$07, $58, $8B	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	29		; Level
	dc.b	$08, $65, $EB	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	30		; Level
	dc.b	$09, $88, $83	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	31		; Level
	dc.b	$0A, $FF, $1D	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	32		; Level
	dc.b	$0C, $6D, $14	; Experience points
	dc.b	$07, $06, $10, $0D, $14, $11, $19, $04, $0B, $10
	
	dc.b	33		; Level
	dc.b	$0E, $0A, $9E	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	34		; Level
	dc.b	$0F, $DD, $EB	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	35		; Level
	dc.b	$11, $ED, $F8	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	36		; Level
	dc.b	$14, $42, $AB	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	37		; Level
	dc.b	$16, $E4, $B3	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	38		; Level
	dc.b	$19, $DE, $DA	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	39		; Level
	dc.b	$1D, $3B, $D4	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	40		; Level
	dc.b	$21, $08, $BA	; Experience points
	dc.b	$07, $06, $10, $0D, $14, $11, $19, $04, $0B, $00
	
	dc.b	41		; Level
	dc.b	$25, $54, $1A	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	42		; Level
	dc.b	$2A, $2E, $65	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	43		; Level
	dc.b	$2F, $AA, $2F	; Experience points
	dc.b	$06, $01, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	44		; Level
	dc.b	$35, $DC, $78	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	45		; Level
	dc.b	$3C, $DC, $F8	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	46		; Level
	dc.b	$44, $C6, $7F	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	47		; Level
	dc.b	$4D, $B7, $57	; Experience points
	dc.b	$06, $02, $04, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	48		; Level
	dc.b	$57, $D1, $BD	; Experience points
	dc.b	$07, $06, $10, $0D, $14, $11, $19, $04, $0B, $00
	
	dc.b	49		; Level
	dc.b	$63, $3C, $5D	; Experience points
	dc.b	$03, $02, $04, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	50		; Level
	dc.b	$70, $22, $EE	; Experience points
	dc.b	$04, $01, $04, $02, $02, $03, $03, $02, $02, $00

; ==============================================================

KainExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$10, $08, $0F, $0A, $0E, $0B, $08, $08, $08, $20
	
	dc.b	2		; Level
	dc.b	$00, $00, $21	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $5D	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $BF	; Experience points
	dc.b	$07, $02, $03, $02, $02, $03, $03, $03, $02, $10
	
	dc.b	5		; Level
	dc.b	$00, $01, $45	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	6		; Level
	dc.b	$00, $02, $37	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	7		; Level
	dc.b	$00, $03, $8D	; Experience points
	dc.b	$07, $0C, $12, $0F, $0C, $12, $11, $07, $07, $20
	
	dc.b	8		; Level
	dc.b	$00, $05, $8A	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	9		; Level
	dc.b	$00, $08, $7C	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $02, $10
	
	dc.b	10		; Level
	dc.b	$00, $0C, $DA	; Experience points
	dc.b	$07, $03, $03, $02, $02, $03, $03, $02, $02, $20
	
	dc.b	11		; Level
	dc.b	$00, $13, $3D	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	12		; Level
	dc.b	$00, $1C, $98	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	13		; Level
	dc.b	$00, $2A, $4D	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $02, $10
	
	dc.b	14		; Level
	dc.b	$00, $3E, $45	; Experience points
	dc.b	$07, $0B, $12, $0F, $0C, $12, $11, $07, $07, $10
	
	dc.b	15		; Level
	dc.b	$00, $5B, $5F	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	16		; Level
	dc.b	$00, $85, $C5	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $04, $00
	
	dc.b	17		; Level
	dc.b	$00, $C3, $89	; Experience points
	dc.b	$07, $03, $03, $02, $02, $03, $03, $02, $02, $10
	
	dc.b	18		; Level
	dc.b	$01, $1D, $40	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	19		; Level
	dc.b	$01, $7E, $0A	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	20		; Level
	dc.b	$01, $E8, $0A	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	21		; Level
	dc.b	$02, $5F, $36	; Experience points
	dc.b	$07, $0B, $12, $0F, $0C, $12, $11, $07, $07, $10
	
	dc.b	22		; Level
	dc.b	$02, $E3, $3B	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	23		; Level
	dc.b	$03, $7D, $80	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	24		; Level
	dc.b	$04, $2D, $CA	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	25		; Level
	dc.b	$04, $F4, $38	; Experience points
	dc.b	$07, $02, $03, $02, $02, $03, $03, $03, $04, $10
	
	dc.b	26		; Level
	dc.b	$05, $D1, $0C	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	27		; Level
	dc.b	$06, $C2, $B1	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $03, $00
	
	dc.b	28		; Level
	dc.b	$07, $CB, $11	; Experience points
	dc.b	$07, $0B, $12, $0F, $0C, $12, $11, $09, $07, $10
	
	dc.b	29		; Level
	dc.b	$08, $E8, $D9	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $04, $00
	
	dc.b	30		; Level
	dc.b	$0A, $1D, $24	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	31		; Level
	dc.b	$0B, $AA, $8E	; Experience points
	dc.b	$07, $02, $03, $02, $02, $03, $03, $02, $03, $10
	
	dc.b	32		; Level
	dc.b	$0D, $2E, $CE	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	33		; Level
	dc.b	$0E, $E5, $88	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $04, $00
	
	dc.b	34		; Level
	dc.b	$10, $D5, $4A	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	35		; Level
	dc.b	$13, $05, $80	; Experience points
	dc.b	$07, $0B, $12, $0F, $0C, $12, $11, $09, $07, $00
	
	dc.b	36		; Level
	dc.b	$15, $7E, $89	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	37		; Level
	dc.b	$18, $49, $DD	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	38		; Level
	dc.b	$1B, $72, $2F	; Experience points
	dc.b	$07, $02, $03, $02, $02, $03, $03, $02, $04, $00
	
	dc.b	39		; Level
	dc.b	$1F, $03, $98	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	40		; Level
	dc.b	$23, $0B, $C8	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	41		; Level
	dc.b	$27, $9A, $11	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	42		; Level
	dc.b	$2C, $C0, $04	; Experience points
	dc.b	$07, $0B, $12, $0F, $0C, $12, $11, $09, $07, $00
	
	dc.b	43		; Level
	dc.b	$32, $91, $4C	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $04, $00
	
	dc.b	44		; Level
	dc.b	$39, $24, $30	; Experience points
	dc.b	$06, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	45		; Level
	dc.b	$40, $91, $D9	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $03, $00
	
	dc.b	46		; Level
	dc.b	$48, $F6, $BB	; Experience points
	dc.b	$07, $03, $03, $02, $02, $03, $03, $03, $02, $00
	
	dc.b	47		; Level
	dc.b	$52, $72, $F8	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $02, $02, $00
	
	dc.b	48		; Level
	dc.b	$5D, $2A, $E0	; Experience points
	dc.b	$06, $02, $03, $02, $02, $03, $03, $03, $04, $00
	
	dc.b	49		; Level
	dc.b	$69, $47, $7D	; Experience points
	dc.b	$07, $0C, $12, $0F, $0C, $12, $11, $09, $07, $00
	
	dc.b	50		; Level
	dc.b	$76, $F7, $2E	; Experience points
	dc.b	$03, $02, $03, $02, $02, $03, $03, $02, $03, $00

; ==============================================================

ShirExpTable:
	
	dc.b	1		; Level
	dc.b	$00, $00, $00	; Experience points
	dc.b	$0D, $06, $12, $0A, $0F, $0C, $12, $09, $09, $10
	
	dc.b	2		; Level
	dc.b	$00, $00, $21	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	3		; Level
	dc.b	$00, $00, $55	; Experience points
	dc.b	$05, $03, $07, $03, $06, $06, $06, $03, $04, $00
	
	dc.b	4		; Level
	dc.b	$00, $00, $AF	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	5		; Level
	dc.b	$00, $01, $2A	; Experience points
	dc.b	$04, $02, $03, $02, $04, $02, $03, $05, $03, $00
	
	dc.b	6		; Level
	dc.b	$00, $02, $07	; Experience points
	dc.b	$06, $02, $07, $03, $06, $06, $06, $04, $04, $01
	
	dc.b	7		; Level
	dc.b	$00, $03, $40	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	8		; Level
	dc.b	$00, $05, $11	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	9		; Level
	dc.b	$00, $07, $C3	; Experience points
	dc.b	$05, $03, $07, $03, $06, $06, $06, $03, $04, $01
	
	dc.b	10		; Level
	dc.b	$00, $0B, $C3	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	11		; Level
	dc.b	$00, $11, $9B	; Experience points
	dc.b	$02, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	12		; Level
	dc.b	$00, $1A, $2B	; Experience points
	dc.b	$08, $02, $07, $03, $06, $06, $06, $04, $04, $11
	
	dc.b	13		; Level
	dc.b	$00, $26, $B6	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	14		; Level
	dc.b	$00, $38, $FC	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	15		; Level
	dc.b	$00, $53, $9E	; Experience points
	dc.b	$05, $03, $07, $03, $06, $06, $06, $03, $04, $10
	
	dc.b	16		; Level
	dc.b	$00, $7A, $6B	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	17		; Level
	dc.b	$00, $B2, $F1	; Experience points
	dc.b	$02, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	18		; Level
	dc.b	$01, $05, $0B	; Experience points
	dc.b	$08, $02, $07, $03, $06, $06, $06, $04, $04, $10
	
	dc.b	19		; Level
	dc.b	$01, $5D, $9E	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	20		; Level
	dc.b	$01, $BE, $98	; Experience points
	dc.b	$04, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	21		; Level
	dc.b	$02, $2B, $AF	; Experience points
	dc.b	$08, $03, $07, $03, $06, $06, $06, $04, $04, $00
	
	dc.b	22		; Level
	dc.b	$02, $A4, $80	; Experience points
	dc.b	$06, $02, $03, $02, $04, $02, $03, $05, $03, $00
	
	dc.b	23		; Level
	dc.b	$03, $31, $AD	; Experience points
	dc.b	$02, $02, $03, $02, $04, $02, $03, $01, $03, $00
	
	dc.b	24		; Level
	dc.b	$03, $D3, $02	; Experience points
	dc.b	$08, $02, $07, $03, $06, $06, $06, $04, $04, $10
	
	dc.b	25		; Level
	dc.b	$04, $88, $99	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	26		; Level
	dc.b	$05, $52, $B0	; Experience points
	dc.b	$04, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	27		; Level
	dc.b	$06, $2F, $D4	; Experience points
	dc.b	$06, $03, $07, $03, $06, $06, $06, $03, $04, $10
	
	dc.b	28		; Level
	dc.b	$07, $21, $C5	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $04, $03, $00
	
	dc.b	29		; Level
	dc.b	$08, $27, $4C	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	30		; Level
	dc.b	$09, $41, $6E	; Experience points
	dc.b	$05, $02, $07, $03, $06, $06, $06, $04, $04, $11
	
	dc.b	31		; Level
	dc.b	$0A, $AD, $1F	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	32		; Level
	dc.b	$0C, $10, $6D	; Experience points
	dc.b	$02, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	33		; Level
	dc.b	$0D, $A1, $EB	; Experience points
	dc.b	$08, $03, $07, $03, $06, $06, $06, $03, $04, $10
	
	dc.b	34		; Level
	dc.b	$0F, $67, $9C	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	35		; Level
	dc.b	$11, $68, $48	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $04, $03, $00
	
	dc.b	36		; Level
	dc.b	$13, $AB, $9A	; Experience points
	dc.b	$05, $02, $07, $03, $06, $06, $06, $04, $04, $10
	
	dc.b	37		; Level
	dc.b	$16, $3A, $3A	; Experience points
	dc.b	$0A, $02, $04, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	38		; Level
	dc.b	$19, $1D, $F4	; Experience points
	dc.b	$04, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	39		; Level
	dc.b	$1C, $61, $DA	; Experience points
	dc.b	$06, $03, $06, $03, $06, $06, $06, $03, $04, $00
	
	dc.b	40		; Level
	dc.b	$20, $12, $6A	; Experience points
	dc.b	$08, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	41		; Level
	dc.b	$24, $3D, $C4	; Experience points
	dc.b	$05, $02, $03, $02, $04, $02, $03, $03, $03, $00
	
	dc.b	42		; Level
	dc.b	$28, $F3, $E1	; Experience points
	dc.b	$0A, $02, $07, $03, $06, $06, $06, $04, $04, $00
	
	dc.b	43		; Level
	dc.b	$2E, $46, $C8	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $01, $03, $00
	
	dc.b	44		; Level
	dc.b	$34, $4A, $DD	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	45		; Level
	dc.b	$3B, $17, $27	; Experience points
	dc.b	$05, $03, $07, $03, $06, $06, $06, $03, $04, $10
	
	dc.b	46		; Level
	dc.b	$42, $C5, $AF	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $02, $03, $00
	
	dc.b	47		; Level
	dc.b	$4B, $73, $DE	; Experience points
	dc.b	$04, $02, $03, $02, $04, $02, $03, $01, $03, $00
	
	dc.b	48		; Level
	dc.b	$55, $42, $EE	; Experience points
	dc.b	$04, $02, $07, $03, $06, $06, $06, $04, $04, $00
	
	dc.b	49		; Level
	dc.b	$60, $58, $6E	; Experience points
	dc.b	$0A, $02, $03, $02, $04, $02, $03, $01, $03, $00
	
	dc.b	50		; Level
	dc.b	$6C, $DE, $CE	; Experience points
	dc.b	$03, $02, $03, $02, $04, $02, $03, $02, $03, $00

; ==============================================================
