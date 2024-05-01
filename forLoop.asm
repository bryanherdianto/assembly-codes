.model small

org 100h

.code
    MOV BL, '0'
    
    init_for:
    ; initialize loop variables
    MOV CL, 0
    
    for:
    ; condition
    CMP CL, 5
    JGE outside_for
    
    ; body
    INC BL 
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    ; increment/decrement and next iteration
    INC CL
    JMP for
    
    outside_for:  
    
ret