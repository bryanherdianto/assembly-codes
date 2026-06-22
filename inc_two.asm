name "incTwo"

.model small  

.data  
      
.code
increment proc near
    inc ax
    inc ax
    inc bx
    ret
increment endp

.startup     
    mov ax, 1000h
    mov ds, ax 
              
    mov bx, 200h                  
    mov ax, 2        
    
    mov cx, 10
    
    incTwo:
    mov [bx], ax
    call INCREMENT
    loop incTwo 
    
.exit
end
