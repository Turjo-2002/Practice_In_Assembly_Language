.model small ;1 CS +1 DS (64KB)
.stack 100h ;256 bytes
.data
;define byte =1 b = 8 bits
dividend db "Input Dividend : $"
divisor db 13, 10,"Input Divisor:$"
quotient db 13,10,"Your Quotient:$"
error db 13,10, "Undefine!! $"
.code 
 main proc ;procedure
     mov ax,@data ; data segment activate
     mov ds,ax ;input,output
    ;load effective address
    lea dx,dividend ;load string
    mov ah,9h ;print the string
    int 21h ;interrupt
    mov ah,1;char input
    int 21h ;interrupt
    ;al
    mov bl,al  ;bl=al release
    sub al,48
    
    lea dx,divisor ;load string
    mov ah,9h ;print the string
    int 21h ;interrupt 
    
    mov ah,1;char input
    int 21h ;interrupt
    ;al
    mov bh,al
    sub al,48 
    
     lea dx,quotient ;load string
    mov ah,9h ;print the string
    int 21h ;interrupt 
    mov ah,1;char input
    int 21h ;interrupt
    ;al
    mov bh,al
    sub al,48
    
     
     exit:
     mov ah,4ch;instruction terminate
     int 21h    ;interrupt
     main endp ; end of procedure
 end main;exit program