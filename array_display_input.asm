.model small
.stack 100h
.data 

input db "insert Array Elements: $"
output db 13,10,"Array Display:  $"
arr db 9 dup(?)

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    ;array input msg print
    lea dx,input
    mov ah,9
    int 21h
    
    lea si,arr    ;array load
    mov cx,3    ;array counter
     mov ah,1 
     
    array_input:         ;array user input
       int 21h           ;al
       mov [si],al       ;push to memory adress
       inc si            ;index inc
       loop array_input  ;loop continue till cx=0
        
        
        lea dx,output
        mov ah,9
        int 21h
        
        lea si,arr
        mov cx,3
        
       array_display:  ;array print
    
         mov dl,[si]
        ; add dl,48
         mov ah,2
         int 21h
         inc si  
         mov dl,32
         int 21h
         loop array_display
    
      exit:
      mov ah,4ch
      int 21h
  
     main endp 
end main