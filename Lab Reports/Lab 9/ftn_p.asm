[org 0x0100]

jmp main

data: dw 10 , 5
result: dw 0

ftn:
    push bp
    mov bp , sp

    mov ax , [bp + 6]
    mov bx , [bp + 4]

    add ax , bx
    mov [result] , ax
    
    pop bp
    ret 4

main:
    mov ax , [data]
    mov bx , [data + 2]

    push ax 
    push bx

    call ftn

    mov ax , 0x4c00
    int 0x21
