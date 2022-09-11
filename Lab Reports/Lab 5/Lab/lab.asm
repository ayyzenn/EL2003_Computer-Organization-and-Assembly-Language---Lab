[org 0x0100]

mov ax , 17
again2:
    mov bx , 255
    again1:
        mov cx , 255
        again:    
            dec cx
            jnz again
            
        dec bx 
        jnz again1

    dec ax
    jnz again2

mov ax , 0x4c00
int 0x21









