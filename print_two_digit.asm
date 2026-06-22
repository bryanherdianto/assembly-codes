name "twoDigit"

.model small
.stack 100h

.data
    buffer db '00$', 0       ; Buffer to store the converted ASCII string
    hexValue db 79h           ; Hexadecimal value to be converted (2B)

.code
main:   
    mov ax, @data
    mov ds, ax 
    mov es, ax

    ; Load the hexadecimal value into AL
    mov ah, hexValue     
    
    ; Point SI to the buffer
    mov si, offset buffer

    ; Convert the tens place
    mov al, ah              ; Copy the value
    and al, 0F0h           ; Mask the tens place
    shr al, 4              ; Shift the value to the right by 4 bits
    add al, 30h            ; Convert the value to ASCII
    stosb                   ; Store the tens place in the buffer

    ; Convert the ones place
    mov al, hexValue             ; Copy the value
    and al, 0Fh            ; Mask the ones place
    add al, 30h            ; Convert the value to ASCII
    stosb                   ; Store the ones place in the buffer

    ; Output the result
    lea dx, buffer  ; Load address of buffer into DX
    mov ah, 9              ; DOS print string function
    int 21h                ; Call DOS interrupt

end main
