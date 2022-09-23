[org 0x0100]

jmp main

message_1: db 'Saad Ahmad (20P-0015)'
lenght_1: dw 21

clrscr:
    push es 
    push ax 
    push di 

    mov ax , 0xb800
    mov es , ax 
    mov di , 0

    nextloc:
        mov word[es:di] , 0x0720
        add di , 2
        cmp di , 4000
        jne nextloc

        pop di
        pop ax 
        pop es 
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

printstr:
    push bp 
    mov bp , sp

    push es 
    push ax 
    push cx 
    push si 
    push di

    mov ax , 0xb800
    mov es , ax 
    mov al , 80 
    mul byte [bp+10]
    add ax , [bp + 12]
    shl ax , 1
    mov di , ax

    mov si , [bp + 6]
    mov cx , [bp + 4]
    mov ah , [bp + 8]

    next:
        mov al , [si]
        mov [es:di] , ax 
        add di , 2
        add si , 1
        loop next

    pop di 
    pop si
    pop cx
    pop ax
    pop es 
    pop bp
    
    ret 10


main:

    call clrscr

    mov ax , 28         ;  x = 31
    push ax
    mov ax , 10         ;  y = 10
    push ax 
    mov ax , 7          ; color of the text and intensity
    push ax 
    mov ax , message_1
    push ax 
    push word[lenght_1]
    call printstr

    mov ah, 0x1        ; input char is 0x1 in ah 
    int 0x21 

    mov ax , 0x4c00 
    int 0x21
