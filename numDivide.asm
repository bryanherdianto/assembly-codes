name "numDivide"

.model small

.data
    HASIL       dw 3 dup (?) 
    SISA        dw 3 dup (?)
    numerator   dw 2340h, 1832h, 1290h
    denominator db 90h, 80h, 70h

.code
.startup
    ; Operasi pertama
    mov ax, [numerator]  
    mov dx, 0                
    mov bl, [denominator] 
    div bx                   
    mov [HASIL], ax      
    mov [SISA], dx       
        
    ; Operasi kedua
    mov ax, [numerator+2]  
    mov dx, 0                
    mov bl, [denominator+1] 
    div bx                   
    mov [HASIL+2], ax      
    mov [SISA+2], dx       
        
    ; Operasi ketiga
    mov ax, [numerator+4]  
    mov dx, 0                
    mov bl, [denominator+2] 
    div bx                   
    mov [HASIL+4], ax      
    mov [SISA+4], dx              
.exit
end