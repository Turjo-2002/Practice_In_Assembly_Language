.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax 
     
     mov cx,4;global condition
     ;cx=row count
     ;cx=char count
    s1:;outer loop,row build 
    mov bx,cx 
     
    s2:;inner loop,char count
      mov ah,2 
    mov ah,2 ;ascii character print
    mov dl,'*';char load to output reg 
    int 21h 
    
     mov dl,13 
    int 21h 
    mov dl,10
    int 21h  
    
    loop s2 ;inner loop continue to print stars dec order
    
     mov ah,2 ;new line print
     mov dl,13 ;carraige return
     int 21h
     mov dl,10 ;line feed
     int 21h  
     mov cx,bx;value restore
     loop s1   ;outer loop continue to print rows dec order
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main