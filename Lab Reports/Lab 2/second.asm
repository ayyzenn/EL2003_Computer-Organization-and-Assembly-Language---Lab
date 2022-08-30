
[org 0x0100]

mov  ax , 0  
mov  ax , 5
add  ax , 2
add  ax , 6

mov  bx , ax
mov  ax , 0x4c00         
int  0x21


