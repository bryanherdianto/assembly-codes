.model small
.stack 100h
.data
    outputMsg db "Random number (0-9): $"
    randomNum db 0
    
.code  
generateRandomNumber proc  
    mov ah, 0h
    int 1ah
    
    mov ax, dx
    mov dx, 0
    mov bx, 10
    div bx
    
    mov randomNum, dl
    
    ret
generateRandomNumber endp
                         
.startup
    mov ah, 9h
    lea dx, outputMsg
    int 21h
    
    call generateRandomNumber
    
    mov ah, 2h
    mov dl, randomNum
    add dl, '0'
    int 21h
.exit
end