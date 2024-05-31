; add name to emulator window
name "helloW"

.model small                               
   
.data 
    ; set the label msg to address of a string ($ for EOF)
    msg db "Hello World!$"
    
.code
.startup    
    ; load the address of msg label to dx register
    lea dx, msg
    ; sets the value 9h in the ah register to display string
    mov ah, 9h
    ; int for display string 
    int 21h     
.exit
end                       
