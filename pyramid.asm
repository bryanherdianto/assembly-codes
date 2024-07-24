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
    mov dl, " "
    int 21h
    
    loop loop2 
    
    ; reverse the value of j 
    ; 3 to 1
    ; 2 to 2
    ; 1 to 3
    mov bh, n
    sub bh, j
    inc bh
    
    ; make the pattern 2n - 1 so odd
    mov bl, bh
    add bl, bh
    sub bl, 1
    
    mov cl, bl
    
    loop3:
    mov ah, 2
    mov dl, '*'
    int 21h
    
    loop loop3
    
    add i, 1
    jmp loop1
    
    quit:
.exit
end