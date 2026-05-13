.model small
.stack 100h
.data 

input db "Insert Array Elements:$"
output db 13,10,"Increasing Array :$"
arr db 12 dup(?)

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    
    
 ;arr input msg print
 
   lea dx ,input
   mov ah,9
   int 21h   
    
    lea bx,arr
    mov cx,13
    
  
   array_input:  ;arr user input 
      mov ah,1
      int 21h    ;al
      mov [bx],al
      inc bx
      
      loop array_input
      
      mov cx,13  ; value  = n
      dec cx    ;compare = n-1  
      
      track_loop:
      mov bx,cx
      mov si,0
    
       sort_array:
       mov al,arr[si]   ;1st element, index 0
       mov dl,arr[si+1] ;2nd element ,index 1
       cmp al,dl        ;compare
       jc normal_loop    ;jump if carry 
       
       ;else
       mov arr[si],dl   ;value swap
       mov arr [si+1],al;value swap
       
       normal_loop:
       inc si
       dec bx 
       jnz sort_array  ;jump if not equal to 0
       loop track_loop
        
       ;array msg output print
       lea dx,output
       mov ah,9
       int 21h
        
       lea bx,arr
       mov cx,13
       
       array_print: ;array print
      
        mov dl,[bx]
        mov ah,2
        int 21h
        inc bx
        loop array_print
      
      
      
      exit:
      mov ah,4ch
      int 21h
  
     main endp 
end main