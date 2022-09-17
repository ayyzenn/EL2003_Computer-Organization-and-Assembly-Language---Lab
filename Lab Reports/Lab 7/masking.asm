[org 0x0100]
jmp start
num: dw 5
start:
    mov ax , [num]
    mov cx , 2
    loop_1:
        shr ax , 1
        rcl bl , 1
        dec cx
        jnz loop_1

    mov cx , 2
    loop_2:
        shr ax , 1
        rcl dh , 1
        dec cx
        jnz loop_2

    or bl , 0
    and dh , 0

    mov cx , 2
    loop_3:
        shr dh , 1
        rcl ah , 1
        dec cx
        jnz loop_3

    mov cx , 2
    loop_4:
        shr bl , 1
        rcl al , 1
        dec cx
        jnz loop_4

mov ax , 0x4c00
int 0x21
