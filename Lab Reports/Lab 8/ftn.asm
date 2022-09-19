[org 0x0100]

jmp main

data: dw 10 , 5
result: dw 0

ftn:
    add ax , bx 
    mov [result] , ax 
    ret 

main:
    mov ax , [data]
    mov bx , [data + 2]

    call ftn

    mov ax , 0x4c00
    int 0x21
