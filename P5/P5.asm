%include "../LIB/pc_iox.inc"

section .bss
    N resw 1  


    section .text
        global _start
        extern pHex_dw
_start:
    ;a
    mov ebx, 0x5C4B2A60
    add ebx, 0x00219B50
    push ebx
    push eax
    mov eax, ebx
    call pHex_dw
    pop eax

    ;b
    push bx

    ;c
    mov al, bl
    mov cl, 8
    mul cl
    mov [N], ax

    mov eax, [N] 
    push eax     
    call pHex_dw
    pop eax

    mov eax, 1
    int 0x80

    