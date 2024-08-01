.MODEL SMALL
.DATA
    ARR DB 1H, 3H, 5H, 7H, 9H, 11H, 13H, 15H, 17H, 19H
    NUM DB 7H
    INDEX DB 0
    
.CODE
.STARTUP           
    MOV CX, 10
    
    MOV DI, OFFSET ARR
    
    AGAIN:
    LODSB
    
    CMP NUM, AL
    JE SAME
    
    INC INDEX
    
    LOOP AGAIN
    
    SAME:       

.EXIT
END