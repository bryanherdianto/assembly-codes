; add name to emulator window
name "addBin"

; starting address from 100H or 256 in decimal
org 100h

; store all labels
.data
    a db 0ah, 0dh, "input first number: $" 
    b db 0ah, 0dh, "input second number: $"
    c db 0ah, 0dh, "addition result: $"
    d db 0ah, 0dh, "result in binary: $"
    e db 0ah, 0dh, "program terminated$" 

.code 
    ; initialize data segment register to data segment
    mov dx, @data
    mov ds, dx
    
    ; print a label
    lea dx, a 
    mov ah, 9h
    int 21h
    
    ; store input to cl register
    mov ah, 1
    int 21h    
    mov cl, al 
    
    ; print b label   
    lea dx, b
    mov ah, 9h
    int 21h
    
    ; store input to ch register
    mov ah, 1
    int 21h
    mov ch, al 
    
    ; convert to int
    sub cl, 30h
    sub ch, 30h
    
    ; add number and convert to char
    add cl, ch
    add cl, 30h
    
    ; print c label
    lea dx, c 
    mov ah, 9h
    int 21h
    
    ; print result of addition         
    mov dl, cl
    mov ah, 2 
    int 21h
    
    ; print d label
    lea dx, d 
    mov ah, 9h
    int 21h 
    
    ; convert char to int
    sub cl, 30h
    mov bl, cl
    
    ; print result in binary
    mov cx, 8
    print: mov ah, 2
           mov dl, '0'
           test bl, 10000000b
           jz zero
           mov dl, '1'
    zero:  int 21h
           shl bl, 1
    loop print
    
    ; print binary suffix
    mov dl, 'b'
    int 21h
    
    ; wait for any key press
    mov ah, 0
    int 16h      
    
    ; print e label 
    lea dx, e
    mov ah, 9h
    int 21h

ret