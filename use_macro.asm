.MODEL SMALL

.DATA
    HASIL DW 0

.CODE

KALI MACRO A, B, C
    MOV AX, A
    MOV BX, B
    MUL BX
    MOV C, AX
ENDM  

.STARTUP
     KALI 3, 7, HASIL
.EXIT
END   