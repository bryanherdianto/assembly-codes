name "inputSum"

.model small

.data 
    n db ? 
    array db 30 dup (?) 
    sum db ?
    input1 db 0ah, 0dh, "insert n: $"
    input2 db 0ah, 0dh, "insert numbers: $" 
    output1 db 0ah, 0dh, "sum: $"
    output2 db "value bigger than 9$"
    
.code
    mov ax, @data
    mov ds, ax      
    
    mov bx, offset array
               
    ; print input1 on screen
    lea dx, input1 
    mov ah, 9
    int 21h   
    
    ; get user input       
    mov ah, 1       
    int 21h 
               
    sub al, 30h
    mov n, al 
          
    mov ch, 0
    mov cl, n
    
    ; print input2 on screen
    lea dx, input2 
    mov ah, 9
    int 21h
    
    getNum:
    mov ah, 1
    int 21h   
    sub al, 30h
    mov [bx], al
    inc bx
    loop getNum  
    
    ; print output1 on screen
    lea dx, output1 
    mov ah, 9
    int 21h 
    
    cld  
    mov si, offset array  
    
    mov ch, 0
    mov cl, n 
    
    mov sum, 0
    
    getSum:
    lodsb
    add sum, al
    loop getSum
    
    cmp sum, 10h   
    jl less
    jge greaterEqual
    
    less:
    mov ah, 2  
    add sum, 30h
    mov dl, sum
    int 21h   
    jmp after
    
    greaterEqual:
    ; print output2 on screen
    lea dx, output2 
    mov ah, 9
    int 21h 
    
    after:         
     
.exit
end