;*********************************************************
; Prática 1                                              *
; Acionamento sequencial de oito leds ligados à porta P2 *
; Programador: Francisco Edno                            *
;*********************************************************

LED	EQU	P2					; Atribui P2 à LED

INICIO:	MOV	P2, #(NOT (1 SHL 0))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 1))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 2))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 3))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 4))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 5))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 6))
	ACALL	T_1S

	MOV	P2, #(NOT (1 SHL 7))
	ACALL	T_1S

	AJMP	INICIO

;********************************************************
; TEMPO							*
;********************************************************
TEMPO:	MOV	R0, #255
DENOVO:	MOV	R1, #255

	DJNZ	R1,$
	DJNZ	R0,DENOVO

	RET
;********************************************************

;********************************************************
; T_1S
;********************************************************
T_1S:	MOV 	R2, #8
T_1S_D:	ACALL	TEMPO
	DJNZ	R2, T_1S_D

	RET
;********************************************************

	END
