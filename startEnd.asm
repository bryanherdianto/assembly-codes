.model small
org 100h

.data 
    input1 db 10,13,"input start: $" 
    input2 db 10,13,"input end: $"
    newline db 10,13,"$"
    
.code
main PROC
    
    lea dx, input1
    mov ah, 9
    int 21h
      
    mov ah, 1
    int 21h  
    mov bh, al
    
    lea dx, input2
    mov ah, 9
    int 21h
      
    mov ah, 1
    int 21h  
    sub al, '0'
    mov bl, al
    
    mov ch, 0
    mov al, bh
    sub al, '0'
    sub bl, al
    add bl, 1
    mov cl, bl
    
    lea dx, newline
    mov ah, 9
    int 21h
    
    print:   
    mov dl, bh
    mov ah, 2 
    int 21h
    inc bh
    loop print  
    
END main