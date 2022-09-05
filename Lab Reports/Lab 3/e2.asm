[org 0x0100]

mov ax , 5 
mov bx , 10

mov cx , ax
mov ax , bx 
mov bx , cx 

mov ax ,0x4c00
int 0x21
