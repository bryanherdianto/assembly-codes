.model small
.data
    i db 0
    j db 0
    inputString db "n=$"
    newline db 0ah, 0dh, '$'
    n db 0

.code
.startup
    mov ah, 9
    lea dx, inputString
    int 21h

    mov ah, 1
    int 21h
    
    sub al, 30h
    
    mov n, al 
    
    loop1:
    
    ; give newline
    mov ah, 9
    lea dx, newline
    int 21h
    
    mov bl, n
    sub bl, i
    mov j, bl
    
    mov bl, n
    cmp i, bl
    je quit
    
    mov ch, 0
    mov cl, j
    
    jmp loop2
    
    loop2:
    mov ah, 2
    mov dl, "*"
    int 21h
    
    loop loop2
    
    add i, 1
    jmp loop1
    
    quit:
.exit
end