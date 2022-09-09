[org 0x0100]

mov bx, num1
mov cx, 5
mov ax, 0

outerloop:
    add ax , [bx]
    add bx , 2
    sub cx , 1


    
    ja  outerloop 

mov [sum] , ax

mov ax , 0x4c00
int 0x21

num1: dw 2,2,2,2,2
sum: dw 0

