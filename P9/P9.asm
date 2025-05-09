global suma
global mi_strchr
global strlen
global getBit

section .text

;int suma( int num1, int num 2)
suma:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    add eax, [ebp+12]
    pop ebp
    ret

;int strlen (char *str)
strlen:
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]    ; str
    xor eax, eax        ; contador = 0
.volver:
    cmp byte [esi], 0
    je .listo
    inc esi
    inc eax
    jmp .volver
.listo:
    pop ebp
    ret

; char *strchrv(char *str, char c)
mi_strchr:
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov dl, [ebp+12]  
.otra_vez:
    mov al, [esi]
    cmp al, 0
    je .no_encontrado
    cmp al, dl
    je .encontrado
    inc esi
    jmp .otra_vez
.encontrado:
    mov eax, esi
    pop ebp
    ret
.no_encontrado:
    xor eax, eax
    pop ebp
    ret

;int getBit( int value, int numbit);
getBit:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    mov ecx, [ebp+12]
    shr eax, cl
    and eax, 1
    pop ebp
    ret

