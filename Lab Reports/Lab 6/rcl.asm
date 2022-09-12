[org 0x0100]

mov ax , 4

mov cx , 4

ok:
    rcl ax , 1
    dec cx
    jnz ok

mov ax , 0x4c00
int 0x21
