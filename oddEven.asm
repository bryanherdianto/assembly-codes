name "oddEven"

.model small

.data
    A db 5      ; Nilai untuk AL
    B db 8      ; Nilai untuk BL
    C db 2      ; Nilai untuk CL
    GANJIL db 0 ; Nilai hasil jika ganjil
    GENAP db 0  ; Nilai hasil jika genap
    SISA db 0   ; Lokasi memori untuk sisa

.code
.startup
    ; Inisialisasi AL, BL, dan CL
    mov al, A
    mov bl, B
    mov cl, C
    
    ; Lakukan operasi (AL+BL)*CL
    add al, bl      
    mul cl          
    
    test al, 1  ; Jika bit terakhir tidak 0, hasilnya ganjil
    jnz adalahGanjil

    ; Jika hasilnya genap, simpan di GENAP
    mov GENAP, al     
    mov SISA, 0       
    jmp selesai         

    adalahGanjil:
        mov GANJIL, al  ; Simpan hasil ke variabel GANJIL
        mov SISA, 1     ; Simpan sisa ke variabel sisa
    
    selesai:
   
.exit
end