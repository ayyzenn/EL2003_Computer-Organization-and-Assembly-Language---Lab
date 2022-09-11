[org 0x0100]

jmp start       

data: dw   6, 4, 5, 2

start: 
    mov  cx, 4                          

    outerloop: 
        mov  bx, 0    
        
        innerloop: 
            mov  ax, [data + bx]

            cmp  ax, [data + bx + 2]
            
            jbe  noswap                 
                ; the swap potion
                mov  dx, [data + bx + 2]
                mov  [data + bx + 2], ax
                mov  [data + bx], dx

            noswap:
            add  bx, 2
            cmp  bx, 6
        jne  innerloop

    ; check outer loop termination 
    sub cx, 1 
    jnz outerloop 

    ; exit system call 
    mov  ax, 0x4c00
    int  0x21

; result will be 6 5 4 2

  