#include <stdio.h>

extern int suma(int a, int b);
extern int strlen(char *s);
extern char *mi_strchr(char *s, char c);
extern int getBit(int value, int bit);

int main() {
    int a = 10, b = 10;
    char *texto = "hola como estas";
    char letra = 't';
    int value = 42;
    int bit = 3;

    printf("la suma: %d\n", suma(a, b));
    printf("longitud de cadena: %d\n", strlen(texto));
    printf("strchr: %s\n", mi_strchr(texto, letra));
    printf("posicion de bit: %d\n", getBit(value, bit));

    return 0;
}