[org 0x0100]

jmp start

num1: db 13
num2: db 5

result: dw 0


start:
    mov al , [num1]
    mov bl , [num2]
    mov cx , 4

    
    check:
        shr al , 1
        jnc ok
            add [result] , al

    ok:
        shl bl , 1
    dec cx
    jnz check

mov ax , 0x4c00
int 0x21
