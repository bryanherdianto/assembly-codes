name "incTwo"

.model tiny     
      
.code
.startup     
    mov ax, 1000h
    mov ds, ax 
              
    mov bx, 200h                  
    mov ax, 2        
    
    mov cx, 10
    
    incTwo:
    mov [bx], ax
    inc ax
    inc ax
    inc bx
    loop incTwo
.exit
end