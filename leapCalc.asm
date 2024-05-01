name "leapCalc"

org 100h

.data
    input1 db 0ah, 0dh, "insert number: $"
    output1 db 0ah, 0dh, "zero remainder? $"
    
.code
    mov ax, @data
    mov ds, ax
    
    lea dx, input1 
    mov ah, 9
    int 21h   
           
    mov ah, 1       
    int 21h 
    
    sub al, 30h
    mov bl, 4
    div bl 
    
    cmp ah, 0   
    
    lea dx, output1 
    mov ah, 9
    int 21h
    
    je equal
    jmp notequal    
    
    equal:
    mov dl, 'y'
    mov ah, 2
    int 21h  
    jmp after
    
    notequal:
    mov dl, 'n'
    mov ah, 2
    int 21h
    
    after:
    
ret