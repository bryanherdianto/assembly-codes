; add name to emulator window
name "helloW"

; starting address is 100h (256 in decimal)
org 100h                               
   
.data 
    ; set the label msg to address of a string ($ for EOF)
    msg db "Hello World!$"
    
.code
    mov ax, @data
    mov ds, ax
    
    ; load the address of msg label to dx register
    lea dx, msg
    ; sets the value 9h in the ah register to display string
    mov ah, 9h
    ; int for display string 
    int 21h 
    
; return control
ret                        