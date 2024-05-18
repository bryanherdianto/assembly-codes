name "printABC"

.model small

.data
src    db "A", 0ah, 0dh, "$"
dest  db 10 dup (?) 

.code 
.startup
; contoh MOVS
cld
mov ax, @data
mov ds, ax
mov es, ax

lea si, src     ; Load address of source into SI
lea di, dest    ; Load address of destination into DI

mov cx, 10      ; Set the count for the movsb operation

rep movsb       ; Copy bytes from src to dest    

mov cx, 5

print:   
mov dx, offset dest           ; Load character from destination into DL
mov ah, 9              ; DOS function for printing character
int 21h                ; Print the character
inc dest                  ; Move to the next character
loop print             ; Repeat until all characters are printed

.exit
end
