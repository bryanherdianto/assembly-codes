; Bryan Herdianto

.MODEL SMALL
.DATA 
    HURUF DB 23 DUP (?)
    JUMLAHBESAR DB 0
    JUMLAHKECIL DB 0
    
.CODE
.STARTUP
    MOV HURUF, 21
    MOV DX, OFFSET HURUF
    MOV AH, 0AH
    INT 21H
    
    CLD
    MOV SI, OFFSET HURUF
    ADD SI, 2
    
    MOV CX, 20
    
    AGAIN:
    LODSB
    CMP AL, 'A'
    JL KEMBALI
    CMP AL, 'Z'
    JLE TAMBAHBESAR
    CMP AL, 'a'
    JL KEMBALI
    CMP AL, 'z'
    JLE TAMBAHKECIL
    
    TAMBAHBESAR:
    INC JUMLAHBESAR
    JMP KEMBALI

    TAMBAHKECIL:
    INC JUMLAHKECIL
    JMP KEMBALI

    KEMBALI:
    LOOP again

.EXIT
END