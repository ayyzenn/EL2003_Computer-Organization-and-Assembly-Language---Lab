[org 0x0100]

mov ax, [src]
add word [dest], ax
mov ax, [src+2]
adc word [dest+2], ax

mov ax , 0x4c00
int 0x21

dest: dd 0x2C  ; 44
src: dd 0x2A   ; 42
 