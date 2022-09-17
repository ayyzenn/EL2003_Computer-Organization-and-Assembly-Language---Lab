[org 0x0100]

jmp start

num1: dd 40000

start:
    shl word [num1], 1
    rcl word [num1+2], 1
    
mov ax , 0x4c00
int 0x21

