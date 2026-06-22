name "doBits"

.model tiny

.code
    ; a. Melakukan clear pada bit 0-3 dan 8-11
    MOV AX, 0AA33H   
    AND AX, 0F0F0H 
    ; Hasil di register AX adalah A030H
    
    ; b. Menginvers bit 4-7 dan 12-15 
    MOV AX, 0AA33H
    XOR AX, 1010H 
    ; Hasil di register AX adalah BA23H
    
    ; c. Mengeset 4 bit paling kiri      
    MOV AX, 0AA33H
    OR AX, 0F000H
    ; Hasil di AX seharusnya 0FA33H
    
    ; d. Menggeser ke kiri sebanyak 2 bit
    MOV AX, 0AA33H
    SHL AX, 2
    ; Hasil di AX seharusnya 2A8CCH, 
    ; tetapi karena AX hanya 16-bit, 
    ; kita akan mendapatkan A8CCH dalam AX
.exit
end