.model small

.data
    ANGKA db 10 dup (?)

.code
    valid macro input
        cmp input, '0'
        jb false
        cmp input, '9'
        ja false
        
        mov [si], input
        inc si
        mov dl, 1
        jmp after
        
        false:
        mov dl, 0
        
        after:
    endm
    
.startup
    lea di, ANGKA
    mov cx, 10
    
    again:
        mov ah, 1
        int 21h
        valid al
        cmp dl, 0
        je ulang
        loop again
        
    jmp keluar
    
    ulang:
        inc cx
        loop again
        
    keluar:    
.exit
end