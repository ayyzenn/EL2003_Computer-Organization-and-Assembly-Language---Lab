[org 0x0100]

jmp main

data: dw 10
result: dw 0

ftn:
    push bp
    mov bp , sp
    sub sp , 2

    mov ax , [bp + 4]
    mov word[bp - 2] , 5        ; creating a local variable
    
    mov bx , word[bp - 2]

    add ax , bx
    mov [result] , ax
    
    mov sp , bp
    pop bp
    ret 2

main:
    mov ax , [data]

    push ax 
    call ftn

    mov ax , 0x4c00
    int 0x21
