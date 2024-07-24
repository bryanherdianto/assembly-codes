.model small
.data
    num db 0

.code
.startup
    mov bl, 5
    mov al, 1
    
    factorial:
    mul bl
    dec bl
    jnz factorial
    
    mov num, al
.exit
end