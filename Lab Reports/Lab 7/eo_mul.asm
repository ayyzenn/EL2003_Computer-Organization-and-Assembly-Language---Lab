[org 0x0100]

jmp start

multipicand: dd 1300
multiplier: dw 500
result: dd 0

start:
    mov cl , 16
    mov dx , [multiplier]

checkbit:
    shr dx,1
    jnc skip

    mov ax , [multipicand]
    add [result] , ax
    mov ax , [multipicand + 2]
    adc [result + 2] , ax

skip: 
    shl word [multipicand] , 1
    rcl word [multipicand + 2] , 1
    dec cl
    jnz checkbit

    mov ax , 0x4c00
    int 0x21
 