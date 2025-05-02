extern getch
extern putchar

section .bss
buffer resb 10

section .text
global _start

_start:
    mov ecx, 10
    mov ebx, buffer

leer_siguiente: ;a
    call getch
    sub al, '0'
    cmp al, 9
    ja leer_siguiente

    mov [ebx], al
    call putchar

    inc ebx
    dec ecx
    cmp ecx, 0
    jnz leer_siguiente

    mov ecx, 10
    mov ebx, buffer

imprimir_hexadecimal: ;b
    mov al, [ebx]
    call imprimir_hex
    inc ebx
    dec ecx
    cmp ecx, 0
    jnz imprimir_hexadecimal

    mov eax, 1
    xor ebx, ebx
    int 0x80

imprimir_hex:
    push eax
    mov ebx, 16
    div ebx
    add al, '0'
    call putchar
    pop eax
    mov al, ah
    add al, '0'
    call putchar
    ret
