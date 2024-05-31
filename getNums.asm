.model small

.data
    KARAKTER db 20 dup (?)
    JUMLAH db 0
    NEWLINE db 0ah, 0dh, '$'
    
.code 

check proc near 
    mov cx, 20
         
    mov di, offset KARAKTER
    
    lagi: 
        cmp [di], '0'
        jae bigger
        jmp after
    
    bigger: 
        cmp [di], '9'
        jbe smaller
        jmp after
        
    smaller:
        inc JUMLAH
        jmp after
        
    after:
        inc di
        loop lagi
    
    ret
check endp

.startup
    mov cx, 20 
                    
    mov di, offset KARAKTER

    input:
        mov ah, 1
        int 21h
        mov [di], al
        inc di
        loop input  
     
    call check
    
    mov al, JUMLAH
    aam
    
    or ax, 3030h
    
    push ax 
     
    mov ah, 9
    lea dx, NEWLINE
    int 21h    
    
    pop bx
        
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
.exit
end