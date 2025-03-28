%include "../LIB/pc_io.inc"   	; incluir declaraciones de procedimiento externos
							; que se encuentran en la biblioteca libpc_io.a

section .text
	global _start       ; referencia para inicio de programa

_start:
	mov byte [msg], 'Z'

	mov edx, msg	
	call puts		

	mov	eax, 1	    
	int	0x80        	

section .data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0