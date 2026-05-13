.model small
.stack 100h
.data 

msg db "This is your array elements:$"
arr db 3,5,7
arr1 db 5 dup(7)

.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;array input msg print
    lea dx,msg
    mov ah,9
    int 21h
    
    lea si,arr;array load
    mov cx,3;array counter
    
    array_display: ;array print 
    
      mov dl,[si];memory adress to dl
      add dl,48 ;ascii convert
      mov ah,2
      int 21h 
      int 21h  
      int 21h
      int 21h
      int 21h
      inc si   ;index inc 
      mov dl,32 
      int 21h
      int 21h
      int 21h
      loop array_display
      
      
      exit:
      mov ah,4ch
      int 21h
  
     main endp 
end main