[org 0x0100]

mov ax,0
mov ax,6

add ax,6
add ax,6
add ax,6
add ax,6
add ax,6

mov ax, 0x4c00
int 0x21





; using loop 

[org 0x100]

xor ax , ax         ;empty ax register
mov bx , num        ;address of num in bx
mov cx , 6          ;number of iterations

outerloop:
    add ax , [bx]

    sub cx , 1

    jnz outerloop

mov [result] , ax

mov ax , 0x4c00
int 0x21

num: dw 6
result: dw 0