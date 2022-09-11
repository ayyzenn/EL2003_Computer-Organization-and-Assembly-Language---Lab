[org 0x0100]

mov al , 126
mov bl , 58

add al , bl

mov ax , 0x4c00
int 0x21