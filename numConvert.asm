name "numConvert"

.model small

.data
    NUMB db 25  ; Data desimal yang akan diubah menjadi BCD
    TEMP1 dw 0  ; Lokasi memori untuk BCD
    TEMP2 dw 0  ; Lokasi memori untuk ASCII

.code
.startup
    ; Konversi desimal menjadi BCD
    mov al, NUMB
    aam             

    ; Simpan hasil konversi BCD di TEMP1 
    mov TEMP1, ax    

    ; Konversi BCD menjadi ASCII dan simpan di TEMP2
    or ax, 3030h     
    mov TEMP2, ax    
.exit
end