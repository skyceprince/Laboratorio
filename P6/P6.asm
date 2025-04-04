section .data
    newline db 0xA, 0

section .text
    global _start
    extern pBin_n, pBin_b, pBin_w, pBin_dw

_start:
    ;a
    mov eax, 0x22446688
    ror eax, 4
    call pBin_dw

    ;b
    mov cx, 0x3F48
    shl cx, 1
    ror cx, 1
    or cx, 0xC000
    call pBin_w 

    ;c
    mov esi, 0x20D685F3
    xor esi, (1 << 0) | (1 << 5) | (1 << 13) | (1 << 18) | (1 << 30)
    call pBin_dw
     
    ;d 
    mov esi, 0x20D685F3
    push esi
    call pBin_dw

    ;e 
    mov ch, 0xA7
    or ch, (1 << 3) | (1 << 6)
    call pBin_b

    mov eax, 1
    xor ebx, ebx
    int 0x80

    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    ret

