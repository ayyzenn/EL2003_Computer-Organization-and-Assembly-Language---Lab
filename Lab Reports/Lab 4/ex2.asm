[org 0x0100]

mov ax, [num1]
mov bx, [num1+2]
add ax, bx
mov [num1+4], ax

mov ax , 0x4c00
int 0x21

num1: dw 5
num2: dw 15
sum: dw 0
