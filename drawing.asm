.model tiny

.code
.startup
    mov ah, 0
    mov al, 13h
    int 10h
    
    mov ah, 0ch
    mov al, 13
    mov cx, 30
    mov dx, 50
    int 10h
    
    mov bl, 70
    firstline:
    inc cx
    int 10h
    dec bl
    jnz firstline
    
    mov bl, 70
    secondline:
    inc dx
    int 10h
    dec bl
    jnz secondline
    
    mov bl, 70
    thirdline:
    dec cx
    int 10h
    dec bl
    jnz thirdline
    
    mov bl, 70
    fourthline:
    dec dx
    int 10h
    dec bl
    jnz fourthline
    
    mov cx, 120
    mov dx, 50
    
    mov bl, 70
    firstx:
    inc cx
    inc dx
    int 10h
    dec bl
    jnz firstx
    
    mov cx, 120
    mov dx, 120
    
    mov bl, 70
    secondx:
    inc cx
    dec dx
    int 10h
    dec bl
    jnz secondx
.exit
end