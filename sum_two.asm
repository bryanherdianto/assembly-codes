name "sumTwo"

.model small

.data
    JUMLAH db 0h     
      
.code
.startup  
    mov ax, 1000h
    mov ds, ax 
              
    mov bx, 200h                  
    mov al, 2        
    
    mov cx, 10
    
    incTwo:
    mov [bx], al
    inc ax
    inc ax
    inc bx
    loop incTwo 
    
    mov bx, 200h
    
    mov cx, 10 
    
    sumTwo:    
    mov ax, @data
    mov ds, ax
    
    push ds
    
    mov ax, 1000h
    mov ds, ax
    
    add al, [bx] 
    adc al, 0
    inc bx
    
    pop ds
    
    add JUMLAH, al
    loop sumTwo
    
.exit
end