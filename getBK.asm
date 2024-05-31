name "getBK"

.model small

.stack 100h

.data
    HURUF db 'AxkiAueka81dsaAieud2'
    JUMLAHKECIL db 0
    JUMLAHBESAR db 0               

.code
.startup          
    mov cx, 20h                 
    mov al, 0        

    lea bx, HURUF
    
    again:
        mov ah, [bx]
        cmp ah, 'A'
        je tambahBesar
        cmp ah, 'a'
        je tambahKecil
        jmp continue
    
    tambahKecil:
        inc JUMLAHKECIL
        jmp continue

    tambahBesar:
        inc JUMLAHBESAR
        
    continue:
        inc bx
        loop again

    mov al, 0
    add al, JUMLAHKECIL
    add al, JUMLAHBESAR
    
    ; interrupt program sebelum exit untuk melihat jumlah di AL
    int 20h 
.exit
end